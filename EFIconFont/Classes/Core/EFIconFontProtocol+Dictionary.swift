//
//  EFIconFontProtocol+Dictionary.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/22.
//

import Foundation

fileprivate struct AssociatedKeys {
    static var dictionary = "dictionary"
}

public extension EFIconFontProtocol where Self : CaseIterable {
    
    // `dictionary` is dictionary of all icon
    public static var dictionary: [String : String] {
        get {
            if let attributes = objc_getAssociatedObject(self, &AssociatedKeys.dictionary) as? [String : String] {
                return attributes
            }
            let newAttributes: [String : String] = Self.generateDictionary()
            objc_setAssociatedObject(self, &AssociatedKeys.dictionary, newAttributes, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return newAttributes
        }
    }

    private static func generateDictionary() -> [String : String] {
        var dictionary: [String : String] = [String : String]()
        for item in Self.allCases {
            dictionary.updateValue(item.unicode, forKey: "\(item)")
        }
        return dictionary
    }
}
