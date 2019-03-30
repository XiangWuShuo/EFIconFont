//
//  EFIconFontMeteocons.swift
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

public extension EFIconFont {

    static let meteocons = EFIconFontMeteocons.self
}

extension EFIconFontMeteocons: EFIconFontCaseIterableProtocol {

    public static var name: String {
        return "meteocons"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontMeteocons: String {
    case _38 = "\u{eac1}"
    case _35 = "\u{eac0}"
    case _44 = "\u{eabf}"
    case _46 = "\u{eabe}"
    case _39 = "\u{eabd}"
    case _40 = "\u{eabc}"
    case _47 = "\u{eabb}"
    case _24 = "\u{eaba}"
    case _28 = "\u{eab9}"
    case _32 = "\u{eab8}"
    case _45 = "\u{eab7}"
    case _26 = "\u{eab6}"
    case _42 = "\u{eab5}"
    case _41 = "\u{eab4}"
    case _29 = "\u{eab3}"
    case _36 = "\u{eab2}"
    case _43 = "\u{eab1}"
    case _37 = "\u{eab0}"
    case _23 = "\u{eaaf}"
    case _21 = "\u{eaae}"
    case _25 = "\u{eaad}"
    case _34 = "\u{eaac}"
    case _30 = "\u{eaab}"
    case _17 = "\u{eaaa}"
    case _22 = "\u{eaa9}"
    case _33 = "\u{eaa8}"
    case _27 = "\u{eaa7}"
    case _11 = "\u{eaa6}"
    case _31 = "\u{eaa5}"
    case _15 = "\u{eaa4}"
    case _13 = "\u{eaa3}"
    case _14 = "\u{eaa2}"
    case _19 = "\u{eaa1}"
    case _8 = "\u{eaa0}"
    case _4 = "\u{ea9f}"
    case _9 = "\u{ea9e}"
    case _20 = "\u{ea9d}"
    case _16 = "\u{ea9c}"
    case _18 = "\u{ea9b}"
    case _5 = "\u{ea9a}"
    case _2 = "\u{ea99}"
    case _7 = "\u{ea98}"
    case _12 = "\u{ea97}"
    case _10 = "\u{ea96}"
    case _3 = "\u{ea95}"
    case _1 = "\u{ea94}"
    case _6 = "\u{ea93}"
}
