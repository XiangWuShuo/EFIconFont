//
//  EFIconFontCaseIterableProtocol.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/24.
//

import Foundation
import UIKit

fileprivate struct Anchor {
    static var dictionaryDictionaries: [String: [String : EFIconFontProtocol]] = [:]
    static var attributesDictionaries: [String: [NSAttributedString.Key : Any]] = [:]
}

public protocol EFIconFontCaseIterableProtocol: EFIconFontProtocol, CaseIterable {

    // `dictionary` is all icons in [String : EFIconFontProtocol]
    static var dictionary: [String : EFIconFontProtocol] { get }

    // `icon` is used to find icon by name
    func icon(named name: String) -> EFIconFontProtocol?

    // `name` is not necessarily equal to .ttf file name
    static var name: String { get }

    // `path` is path of .ttf file
    static var path: String { get }

    // `attributes` is style of all icons
    static var attributes: [NSAttributedString.Key : Any] { set get }

    // `foregroundColor` is foregroundColor of all icons
    static var foregroundColor: UIColor? { set get }

    // `backgroundColor` is backgroundColor of all icons
    static var backgroundColor: UIColor? { set get }
}

public extension EFIconFontCaseIterableProtocol {

    static var dictionary: [String : EFIconFontProtocol] {
        get {
            let key: String = String(describing: Self.self)
            if let attributes = Anchor.dictionaryDictionaries[key] {
                return attributes
            }
            let newAttributes: [String : EFIconFontProtocol] = generateDictionary()
            Anchor.dictionaryDictionaries.updateValue(newAttributes, forKey: key)
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

    func icon(named name: String) -> EFIconFontProtocol? {
        return Self.dictionary[name]
    }

    static var path: String {
        return Bundle(for: EFIconFont.self).path(forResource: Self.name, ofType: "ttf") ?? Bundle.main.path(forResource: Self.name, ofType: "ttf") ?? ""
    }

    static var attributes: [NSAttributedString.Key : Any] {
        get {
            let key: String = String(describing: Self.self)
            return Anchor.attributesDictionaries[key] ?? [:]
        }
        set {
            let key: String = String(describing: Self.self)
            Anchor.attributesDictionaries.updateValue(newValue, forKey: key)
        }
    }

    static var foregroundColor: UIColor? {
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

    static var backgroundColor: UIColor? {
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
    var name: String {
        get {
            return Self.name
        }
    }

    var path: String {
        get {
            return Self.path
        }
    }

    var attributes: [NSAttributedString.Key : Any] {
        get {
            return Self.attributes
        }
        set {
            Self.attributes = newValue
        }
    }

    var foregroundColor: UIColor? {
        return Self.foregroundColor
    }

    var backgroundColor: UIColor? {
        return Self.backgroundColor
    }
}
