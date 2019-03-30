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
    
    static let awesomeRegular = EFIconFontFontAwesomeRegular.self
}

extension EFIconFontFontAwesomeRegular: EFIconFontCaseIterableProtocol {
    
    public static var name: String {
        return "fontawesomeregular"
    }
    
    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontFontAwesomeRegular: String {
    case windowRestore = "\u{e847}"
    case smileBeam = "\u{e846}"
    case snowflake = "\u{e845}"
    case trashAlt = "\u{e844}"
    case sun = "\u{e843}"
    case windowClose = "\u{e842}"
    case sadTear = "\u{e841}"
    case questionCircle = "\u{e840}"
    case idBadge = "\u{e83f}"
    case windowMaximize = "\u{e83e}"
    case windowMinimize = "\u{e83d}"
    case thumbsUp = "\u{e83c}"
    case timesCircle = "\u{e83b}"
    case star = "\u{e83a}"
    case userCircle = "\u{e839}"
    case handPointLeft = "\u{e838}"
    case objectGroup = "\u{e837}"
    case surprise = "\u{e836}"
    case user = "\u{e835}"
    case tired = "\u{e834}"
    case thumbsDown = "\u{e833}"
    case pauseCircle = "\u{e832}"
    case mehRollingEyes = "\u{e831}"
    case smileWink = "\u{e830}"
    case stickyNote = "\u{e82f}"
    case stopCircle = "\u{e82e}"
    case lemon = "\u{e82d}"
    case square = "\u{e82c}"
    case plusSquare = "\u{e82b}"
    case save = "\u{e82a}"
    case smile = "\u{e829}"
    case starHalf = "\u{e828}"
    case minusSquare = "\u{e827}"
    case shareSquare = "\u{e826}"
    case registered = "\u{e825}"
    case objectUngroup = "\u{e824}"
    case moneyBillAlt = "\u{e823}"
    case kissWinkHeart = "\u{e822}"
    case playCircle = "\u{e821}"
    case sadCry = "\u{e820}"
    case listAlt = "\u{e81f}"
    case paperPlane = "\u{e81e}"
    case grinTongueSquint = "\u{e81d}"
    case newspaper = "\u{e81c}"
    case images = "\u{e81b}"
    case moon = "\u{e81a}"
    case flag = "\u{e819}"
    case meh = "\u{e818}"
    case map = "\u{e817}"
    case lifeRing = "\u{e816}"
    case lightbulb = "\u{e815}"
    case mehBlank = "\u{e814}"
    case handSpock = "\u{e813}"
    case handScissors = "\u{e812}"
    case heart = "\u{e811}"
    case kiss = "\u{e810}"
    case idCard = "\u{e80f}"
    case laughWink = "\u{e80e}"
    case keyboard = "\u{e80d}"
    case fileAudio = "\u{e80c}"
    case laughSquint = "\u{e80b}"
    case laugh = "\u{e80a}"
    case laughBeam = "\u{e809}"
    case kissBeam = "\u{e808}"
    case handshake = "\u{e807}"
    case handRock = "\u{e806}"
    case hospital = "\u{e805}"
    case handPointer = "\u{e804}"
    case handPaper = "\u{e803}"
    case image = "\u{e802}"
    case hourglass = "\u{e801}"
    case hdd = "\u{e800}"
    case handPointRight = "\u{e7ff}"
    case handPeace = "\u{e7fe}"
    case handPointUp = "\u{e7fd}"
    case handPointDown = "\u{e7fc}"
    case grinTongueWink = "\u{e7fb}"
    case grinWink = "\u{e7fa}"
    case grinSquint = "\u{e7f9}"
    case grinStars = "\u{e7f8}"
    case handLizard = "\u{e7f7}"
    case grinTongue = "\u{e7f6}"
    case grin = "\u{e7f5}"
    case grinTears = "\u{e7f4}"
    case grinHearts = "\u{e7f3}"
    case grimace = "\u{e7f2}"
    case frown = "\u{e7f1}"
    case fontAwesomeLogoFull = "\u{e7f0}"
    case grinBeam = "\u{e7ef}"
    case grinBeamSweat = "\u{e7ee}"
    case grinAlt = "\u{e7ed}"
    case grinSquintTears = "\u{e7ec}"
    case futbol = "\u{e7eb}"
    case gem = "\u{e7ea}"
    case folder = "\u{e7e9}"
    case frownOpen = "\u{e7e8}"
    case fileImage = "\u{e7e7}"
    case flushed = "\u{e7e6}"
    case envelope = "\u{e7e5}"
    case folderOpen = "\u{e7e4}"
    case fileWord = "\u{e7e3}"
    case envelopeOpen = "\u{e7e2}"
    case fileVideo = "\u{e7e1}"
    case fileCode = "\u{e7e0}"
    case filePdf = "\u{e7df}"
    case copy = "\u{e7de}"
    case file = "\u{e7dd}"
    case filePowerpoint = "\u{e7dc}"
    case fileExcel = "\u{e7db}"
    case fileAlt = "\u{e7da}"
    case eye = "\u{e7d9}"
    case eyeSlash = "\u{e7d8}"
    case comments = "\u{e7d7}"
    case closedCaptioning = "\u{e7d6}"
    case fileArchive = "\u{e7d5}"
    case dotCircle = "\u{e7d4}"
    case checkCircle = "\u{e7d3}"
    case copyright = "\u{e7d2}"
    case dizzy = "\u{e7d1}"
    case comment = "\u{e7d0}"
    case edit = "\u{e7cf}"
    case creditCard = "\u{e7ce}"
    case commentAlt = "\u{e7cd}"
    case compass = "\u{e7cc}"
    case caretSquareDown = "\u{e7cb}"
    case commentDots = "\u{e7ca}"
    case checkSquare = "\u{e7c9}"
    case caretSquareRight = "\u{e7c8}"
    case clipboard = "\u{e7c7}"
    case caretSquareUp = "\u{e7c6}"
    case clone = "\u{e7c5}"
    case clock = "\u{e7c4}"
    case calendarAlt = "\u{e7c3}"
    case calendar = "\u{e7c2}"
    case building = "\u{e7c1}"
    case circle = "\u{e7c0}"
    case caretSquareLeft = "\u{e7bf}"
    case chartBar = "\u{e7be}"
    case calendarPlus = "\u{e7bd}"
    case bellSlash = "\u{e7bc}"
    case calendarMinus = "\u{e7bb}"
    case calendarCheck = "\u{e7ba}"
    case arrowAltCircleRight = "\u{e7b9}"
    case calendarTimes = "\u{e7b8}"
    case bell = "\u{e7b7}"
    case arrowAltCircleUp = "\u{e7b6}"
    case bookmark = "\u{e7b5}"
    case angry = "\u{e7b4}"
    case addressCard = "\u{e7b3}"
    case arrowAltCircleLeft = "\u{e7b2}"
    case arrowAltCircleDown = "\u{e7b1}"
    case addressBook = "\u{e7b0}"
}
