//
//  EFIconFontProtocol.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/20.
//
//  Copyright (c) 2019 EyreFree <eyrefree@eyrefree.org>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import UIKit

fileprivate struct AssociatedKeys {
    static var attributes = "attributes"
}

public protocol EFIconFontProtocol {

    // `name` is not necessarily equal to .ttf file name
    var name: String { get }

    // `path` is path of .ttf file
    var path: String { get }

    // `unicode` is unique identifier of particular icon
    var unicode: String { get }

    // `attributes` is style of icon
    var attributes: [NSAttributedString.Key : Any] { set get }
}

public extension EFIconFontProtocol {

    // MARK:- Private
    private func loaded() -> Bool {
        if UIFont.fontNames(forFamilyName: name).isEmpty == false {
            return true
        }
        if path.isEmpty {
            return false
        }
        guard let fontData = NSData(contentsOfFile: path), let dataProvider = CGDataProvider(data: fontData), let cgFont = CGFont(dataProvider) else {
            return false
        }
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(cgFont, &error) {
            var errorDescription: CFString = "Unknown" as CFString
            if let takeUnretainedValue = error?.takeUnretainedValue() {
                errorDescription = CFErrorCopyDescription(takeUnretainedValue)
            }
            print("Unable to load \(path): \(errorDescription)")
            return false
        }
        return true
    }

    private func attributesWith(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> [NSAttributedString.Key : Any]? {
        guard let font = font(size: fontSize) else { return nil }
        var attributesCombine: [NSAttributedString.Key : Any] = self.attributes
        if let attributes = attributes {
            for attribute in attributes {
                attributesCombine.updateValue(attribute.value, forKey: attribute.key)
            }
        }
        attributesCombine.updateValue(font, forKey: NSAttributedString.Key.font)
        return attributesCombine
    }

    // Mark:- Style
    public var attributes: [NSAttributedString.Key : Any] {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.attributes) as? [NSAttributedString.Key : Any] ?? [:]
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.attributes, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    public var foregroundColor: UIColor? {
        get {
            return attributes[NSAttributedString.Key.foregroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                attributes.updateValue(newValue, forKey: NSAttributedString.Key.foregroundColor)
            } else {
                attributes.removeValue(forKey: NSAttributedString.Key.foregroundColor)
            }
        }
    }

    public var backgroundColor: UIColor? {
        get {
            return attributes[NSAttributedString.Key.backgroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                attributes.updateValue(newValue, forKey: NSAttributedString.Key.backgroundColor)
            } else {
                attributes.removeValue(forKey: NSAttributedString.Key.backgroundColor)
            }
        }
    }

    // Mark:- Font
    public func font(size fontSize: CGFloat) -> UIFont? {
        if !loaded() { return nil }
        return UIFont(name: self.name, size: fontSize)
    }

    // MARK:- String
    public func attributedString(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> NSAttributedString? {
        guard let attributes = attributesWith(size: fontSize, attributes: attributes) else { return nil }
        return NSAttributedString(string: self.unicode, attributes: attributes)
    }

    public func attributedString(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> NSAttributedString? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return attributedString(size: fontSize, attributes: attributesCombine)
    }

    // MARK:- Image
    public func image(size fontSize: CGFloat, attributes: [NSAttributedString.Key : Any]?) -> UIImage? {
        guard let imageString: NSAttributedString = attributedString(size: fontSize, attributes: attributes) else { return nil }
        let rect = imageString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: fontSize), options: .usesLineFragmentOrigin, context: nil)
        let imageSize: CGSize = rect.size
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        imageString.draw(in: rect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    public func image(size fontSize: CGFloat, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return image(size: fontSize, attributes: attributesCombine)
    }

    public func image(size imageSize: CGSize, attributes: [NSAttributedString.Key : Any]?) -> UIImage? {
        guard let imageString: NSAttributedString = attributedString(size: 1, attributes: attributes) else { return nil }
        let rect = imageString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 1), options: .usesLineFragmentOrigin, context: nil)
        let widthScale = imageSize.width / rect.width
        let heightScale = imageSize.height / rect.height
        let scale = (widthScale < heightScale) ? widthScale : heightScale
        let scaledWidth = rect.width * scale
        let scaledHeight = rect.height * scale
        var anchorPoint = CGPoint.zero
        if widthScale < heightScale {
            anchorPoint.y = (imageSize.height - scaledHeight) / 2
        } else if widthScale > heightScale {
            anchorPoint.x = (imageSize.width - scaledWidth) / 2
        }
        var anchorRect = CGRect.zero
        anchorRect.origin = anchorPoint
        anchorRect.size.width = scaledWidth
        anchorRect.size.height = scaledHeight
        guard let imageStringScale: NSAttributedString = attributedString(size: scale, attributes: attributes) else { return nil }
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        imageStringScale.draw(in: anchorRect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    public func image(size imageSize: CGSize, foregroundColor: UIColor? = nil, backgroundColor: UIColor? = nil) -> UIImage? {
        var attributesCombine: [NSAttributedString.Key : Any] = [:]
        if let foregroundColor = foregroundColor {
            attributesCombine.updateValue(foregroundColor, forKey: NSAttributedString.Key.foregroundColor)
        }
        if let backgroundColor = backgroundColor {
            attributesCombine.updateValue(backgroundColor, forKey: NSAttributedString.Key.backgroundColor)
        }
        return image(size: imageSize, attributes: attributesCombine)
    }
}
