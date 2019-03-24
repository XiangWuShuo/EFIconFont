//
//  EFIconFontCaseIterableProtocol.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/24.
//

import Foundation

fileprivate struct AssociatedKeys {
    static var dictionary = "dictionary"
}

public protocol EFIconFontCaseIterableProtocol: EFIconFontProtocol, CaseIterable {

    // `dictionary` is all icons in [String : EFIconFontProtocol]
    static var dictionary: [String : EFIconFontProtocol] { get }

    // `icon` is used to find icon by name
    func icon(named name: String) -> EFIconFontProtocol?

    // `attributes` is style of all icons
    static var attributes: [NSAttributedString.Key : Any] { set get }

    // `foregroundColor` is foregroundColor of all icons
    static var foregroundColor: UIColor? { set get }

    // `backgroundColor` is backgroundColor of all icons
    static var backgroundColor: UIColor? { set get }
}

public extension EFIconFontCaseIterableProtocol {

    public static var dictionary: [String : EFIconFontProtocol] {
        get {
            if let attributes = objc_getAssociatedObject(self, &AssociatedKeys.dictionary) as? [String : EFIconFontProtocol] {
                return attributes
            }
            let newAttributes: [String : EFIconFontProtocol] = generateDictionary()
            objc_setAssociatedObject(self, &AssociatedKeys.dictionary, newAttributes, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return newAttributes
        }
    }

    private static func generateDictionary() -> [String : EFIconFontProtocol] {
        var dictionary: [String : EFIconFontProtocol] = [String : EFIconFontProtocol]()
        for item in Self.allCases {
            dictionary.updateValue(item, forKey: "\(item)")
        }
        return dictionary
    }

    public func icon(named name: String) -> EFIconFontProtocol? {
        return Self.dictionary[name]
    }

    public static var foregroundColor: UIColor? {
        get {
            return Self.attributes[NSAttributedString.Key.foregroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                Self.attributes.updateValue(newValue, forKey: NSAttributedString.Key.foregroundColor)
            } else {
                Self.attributes.removeValue(forKey: NSAttributedString.Key.foregroundColor)
            }
        }
    }

    public static var backgroundColor: UIColor? {
        get {
            return Self.attributes[NSAttributedString.Key.backgroundColor] as? UIColor
        }
        set {
            if let newValue = newValue {
                Self.attributes.updateValue(newValue, forKey: NSAttributedString.Key.backgroundColor)
            } else {
                Self.attributes.removeValue(forKey: NSAttributedString.Key.backgroundColor)
            }
        }
    }

    // MARK:- EFIconFontProtocol
    public var attributes: [NSAttributedString.Key : Any] {
        get {
            return Self.attributes
        }
        set {
            Self.attributes = newValue
        }
    }

    public var foregroundColor: UIColor? {
        return Self.foregroundColor
    }

    public var backgroundColor: UIColor? {
        return Self.backgroundColor
    }
}
