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

public protocol EFIconFontProtocol {

    // `name` is not necessarily equal to .ttf file name
    var name: String { get }

    // `path` is path of .ttf file
    var path: String { get }

    // `unicode` is unique identifier of particular icon
    var unicode: String { get }
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

    private func font(size fontSize: CGFloat) -> UIFont? {
        if !loaded() { return nil }
        return UIFont(name: self.name, size: fontSize)
    }

    // MARK:- String
    public func attributedString(size fontSize: CGFloat, color: UIColor? = nil) -> NSAttributedString? {
        guard let font = font(size: fontSize) else { return nil }
        var attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : font]
        if let color = color {
            attributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
        }
        return NSAttributedString(string: self.unicode, attributes: attributes)
    }

    // MARK:- Image
    public func image(size fontSize: CGFloat, color: UIColor? = nil) -> UIImage? {
        guard let font = font(size: fontSize) else { return nil }
        var attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : font]
        if let color = color {
            attributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
        }
        let attributedString = NSAttributedString(string: unicode, attributes: attributes)
        let rect = attributedString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: fontSize), options: .usesLineFragmentOrigin, context: nil)
        let imageSize: CGSize = rect.size
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        attributedString.draw(in: rect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    public func image(size imageSize: CGSize, color: UIColor? = nil) -> UIImage? {
        guard let font = self.font(size: 1) else { return nil }
        var attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font : font]
        if let color = color {
            attributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
        }
        var attributedString = NSAttributedString(string: unicode, attributes: attributes)
        let rect = attributedString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 1), options: .usesLineFragmentOrigin, context: nil)
        let widthScale = imageSize.width / rect.width
        let heightScale = imageSize.height / rect.height
        let scale = (widthScale < heightScale) ? widthScale : heightScale
        let scaledWidth = rect.width * scale
        let scaledHeight = rect.height * scale
        var anchorPoint = CGPoint.zero
        if(widthScale < heightScale){
            anchorPoint.y = (imageSize.height - scaledHeight) / 2
        } else if(widthScale > heightScale) {
            anchorPoint.x = (imageSize.width - scaledWidth) / 2
        }
        var anchorRect = CGRect.zero
        anchorRect.origin = anchorPoint
        anchorRect.size.width = scaledWidth
        anchorRect.size.height = scaledHeight
        guard let fontScale = self.font(size: scale) else { return nil }
        attributes[NSAttributedString.Key.font] = fontScale
        attributedString = NSAttributedString(string: unicode, attributes: attributes)
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        attributedString.draw(in: anchorRect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
