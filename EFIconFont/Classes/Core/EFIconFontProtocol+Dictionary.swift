//
//  EFIconFontProtocol+Dictionary.swift
//  EFIconFont
//
//  Created by EyreFree on 2019/3/22.
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

fileprivate struct AssociatedKeys {
    static var dictionary = "dictionary"
}

public extension EFIconFontProtocol where Self : CaseIterable {

    public static var dictionary: [String : EFIconFontProtocol]? {
        get {
            if let attributes = objc_getAssociatedObject(self, &AssociatedKeys.dictionary) as? [String : EFIconFontProtocol] {
                return attributes
            }
            let newAttributes: [String : EFIconFontProtocol] = generateDictionary()
            objc_setAssociatedObject(self, &AssociatedKeys.dictionary, newAttributes, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return newAttributes
        }
    }

    public static func generateDictionary() -> [String : EFIconFontProtocol] {
        var dictionary: [String : EFIconFontProtocol] = [String : EFIconFontProtocol]()
        for item in Self.allCases {
            dictionary.updateValue(item, forKey: "\(item)")
        }
        return dictionary
    }
}
