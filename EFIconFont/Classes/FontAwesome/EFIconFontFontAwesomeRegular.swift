//
//  EFIconFontFontAwesomeRegular.swift
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

    public static let awesomeRegular = EFIconFontFontAwesomeRegular.self
}

extension EFIconFontFontAwesomeRegular: EFIconFontCaseIterableProtocol {

    public static var attributes: [NSAttributedString.Key : Any] = [:]

    public var name: String {
        return "Font Awesome 5 Free"
    }

    public var path: String {
        return Bundle(for: EFIconFont.self).path(forResource: "fa-regular-400", ofType: "ttf") ?? ""
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontFontAwesomeRegular: String {
    case addressBook = "\u{f2b9}"
    case addressCard = "\u{f2bb}"
    case angry = "\u{f556}"
    case arrowAltCircleDown = "\u{f358}"
    case arrowAltCircleLeft = "\u{f359}"
    case arrowAltCircleRight = "\u{f35a}"
    case arrowAltCircleUp = "\u{f35b}"
    case bell = "\u{f0f3}"
    case bellSlash = "\u{f1f6}"
    case bookmark = "\u{f02e}"
    case building = "\u{f1ad}"
    case calendar = "\u{f133}"
    case calendarAlt = "\u{f073}"
    case calendarCheck = "\u{f274}"
    case calendarMinus = "\u{f272}"
    case calendarPlus = "\u{f271}"
    case calendarTimes = "\u{f273}"
    case caretSquareDown = "\u{f150}"
    case caretSquareLeft = "\u{f191}"
    case caretSquareRight = "\u{f152}"
    case caretSquareUp = "\u{f151}"
    case chartBar = "\u{f080}"
    case checkCircle = "\u{f058}"
    case checkSquare = "\u{f14a}"
    case circle = "\u{f111}"
    case clipboard = "\u{f328}"
    case clock = "\u{f017}"
    case clone = "\u{f24d}"
    case closedCaptioning = "\u{f20a}"
    case comment = "\u{f075}"
    case commentAlt = "\u{f27a}"
    case commentDots = "\u{f4ad}"
    case comments = "\u{f086}"
    case compass = "\u{f14e}"
    case copy = "\u{f0c5}"
    case copyright = "\u{f1f9}"
    case creditCard = "\u{f09d}"
    case dizzy = "\u{f567}"
    case dotCircle = "\u{f192}"
    case edit = "\u{f044}"
    case envelope = "\u{f0e0}"
    case envelopeOpen = "\u{f2b6}"
    case eye = "\u{f06e}"
    case eyeSlash = "\u{f070}"
    case file = "\u{f15b}"
    case fileAlt = "\u{f15c}"
    case fileArchive = "\u{f1c6}"
    case fileAudio = "\u{f1c7}"
    case fileCode = "\u{f1c9}"
    case fileExcel = "\u{f1c3}"
    case fileImage = "\u{f1c5}"
    case filePdf = "\u{f1c1}"
    case filePowerpoint = "\u{f1c4}"
    case fileVideo = "\u{f1c8}"
    case fileWord = "\u{f1c2}"
    case flag = "\u{f024}"
    case flushed = "\u{f579}"
    case folder = "\u{f07b}"
    case folderOpen = "\u{f07c}"
    case fontAwesomeLogoFull = "\u{f4e6}"
    case frown = "\u{f119}"
    case frownOpen = "\u{f57a}"
    case futbol = "\u{f1e3}"
    case gem = "\u{f3a5}"
    case grimace = "\u{f57f}"
    case grin = "\u{f580}"
    case grinAlt = "\u{f581}"
    case grinBeam = "\u{f582}"
    case grinBeamSweat = "\u{f583}"
    case grinHearts = "\u{f584}"
    case grinSquint = "\u{f585}"
    case grinSquintTears = "\u{f586}"
    case grinStars = "\u{f587}"
    case grinTears = "\u{f588}"
    case grinTongue = "\u{f589}"
    case grinTongueSquint = "\u{f58a}"
    case grinTongueWink = "\u{f58b}"
    case grinWink = "\u{f58c}"
    case handLizard = "\u{f258}"
    case handPaper = "\u{f256}"
    case handPeace = "\u{f25b}"
    case handPointDown = "\u{f0a7}"
    case handPointLeft = "\u{f0a5}"
    case handPointRight = "\u{f0a4}"
    case handPointUp = "\u{f0a6}"
    case handPointer = "\u{f25a}"
    case handRock = "\u{f255}"
    case handScissors = "\u{f257}"
    case handSpock = "\u{f259}"
    case handshake = "\u{f2b5}"
    case hdd = "\u{f0a0}"
    case heart = "\u{f004}"
    case hospital = "\u{f0f8}"
    case hourglass = "\u{f254}"
    case idBadge = "\u{f2c1}"
    case idCard = "\u{f2c2}"
    case image = "\u{f03e}"
    case images = "\u{f302}"
    case keyboard = "\u{f11c}"
    case kiss = "\u{f596}"
    case kissBeam = "\u{f597}"
    case kissWinkHeart = "\u{f598}"
    case laugh = "\u{f599}"
    case laughBeam = "\u{f59a}"
    case laughSquint = "\u{f59b}"
    case laughWink = "\u{f59c}"
    case lemon = "\u{f094}"
    case lifeRing = "\u{f1cd}"
    case lightbulb = "\u{f0eb}"
    case listAlt = "\u{f022}"
    case map = "\u{f279}"
    case meh = "\u{f11a}"
    case mehBlank = "\u{f5a4}"
    case mehRollingEyes = "\u{f5a5}"
    case minusSquare = "\u{f146}"
    case moneyBillAlt = "\u{f3d1}"
    case moon = "\u{f186}"
    case newspaper = "\u{f1ea}"
    case objectGroup = "\u{f247}"
    case objectUngroup = "\u{f248}"
    case paperPlane = "\u{f1d8}"
    case pauseCircle = "\u{f28b}"
    case playCircle = "\u{f144}"
    case plusSquare = "\u{f0fe}"
    case questionCircle = "\u{f059}"
    case registered = "\u{f25d}"
    case sadCry = "\u{f5b3}"
    case sadTear = "\u{f5b4}"
    case save = "\u{f0c7}"
    case shareSquare = "\u{f14d}"
    case smile = "\u{f118}"
    case smileBeam = "\u{f5b8}"
    case smileWink = "\u{f4da}"
    case snowflake = "\u{f2dc}"
    case square = "\u{f0c8}"
    case star = "\u{f005}"
    case starHalf = "\u{f089}"
    case stickyNote = "\u{f249}"
    case stopCircle = "\u{f28d}"
    case sun = "\u{f185}"
    case surprise = "\u{f5c2}"
    case thumbsDown = "\u{f165}"
    case thumbsUp = "\u{f164}"
    case timesCircle = "\u{f057}"
    case tired = "\u{f5c8}"
    case trashAlt = "\u{f2ed}"
    case user = "\u{f007}"
    case userCircle = "\u{f2bd}"
    case windowClose = "\u{f410}"
    case windowMaximize = "\u{f2d0}"
    case windowMinimize = "\u{f2d1}"
    case windowRestore = "\u{f2d2}"
}
