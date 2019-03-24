//
//  EFIconFontOcticons.swift
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
import EFIconFont

public extension EFIconFont {

    public static let octicons = EFIconFontOcticons.self
}

extension EFIconFontOcticons: EFIconFontProtocol, CaseIterable {

    public var name: String {
        return "octicons"
    }

    public var unicode: String {
        return self.rawValue
    }
}

public enum EFIconFontOcticons: String {
    case thumbsup = "\u{e6d7}"
    case unverified = "\u{e6d6}"
    case unfold = "\u{e6d5}"
    case verified = "\u{e6d4}"
    case triangleLeft = "\u{e6d3}"
    case telescope = "\u{e6d2}"
    case x = "\u{e6d1}"
    case server = "\u{e6d0}"
    case watch = "\u{e6cf}"
    case zap = "\u{e6ce}"
    case smiley = "\u{e6cd}"
    case versions = "\u{e6cc}"
    case unmute = "\u{e6cb}"
    case stop = "\u{e6ca}"
    case triangleDown = "\u{e6c9}"
    case triangleUp = "\u{e6c8}"
    case signIn = "\u{e6c7}"
    case tools = "\u{e6c6}"
    case radioTower = "\u{e6c5}"
    case shield = "\u{e6c4}"
    case triangleRight = "\u{e6c3}"
    case threeBars = "\u{e6c2}"
    case repo = "\u{e6c1}"
    case trashcan = "\u{e6c0}"
    case tasklist = "\u{e6bf}"
    case search = "\u{e6be}"
    case thumbsdown = "\u{e6bd}"
    case terminal = "\u{e6bc}"
    case tag = "\u{e6bb}"
    case textSize = "\u{e6ba}"
    case paintcan = "\u{e6b9}"
    case italic = "\u{e6b8}"
    case sync = "\u{e6b7}"
    case repoForked = "\u{e6b6}"
    case grabber = "\u{e6b5}"
    case ruby = "\u{e6b4}"
    case star = "\u{e6b3}"
    case screenNormal = "\u{e6b2}"
    case signOut = "\u{e6b1}"
    case requestChanges = "\u{e6b0}"
    case squirrel = "\u{e6af}"
    case settings = "\u{e6ae}"
    case repoPush = "\u{e6ad}"
    case repoPull = "\u{e6ac}"
    case repoForcePush = "\u{e6ab}"
    case pin = "\u{e6aa}"
    case rss = "\u{e6a9}"
    case fold = "\u{e6a8}"
    case milestone = "\u{e6a7}"
    case report = "\u{e6a6}"
    case screenFull = "\u{e6a5}"
    case rocket = "\u{e6a4}"
    case pulse = "\u{e6a3}"
    case person = "\u{e6a2}"
    case repoClone = "\u{e6a1}"
    case project = "\u{e6a0}"
    case quote = "\u{e69f}"
    case lock = "\u{e69e}"
    case mute = "\u{e69d}"
    case organization = "\u{e69c}"
    case note = "\u{e69b}"
    case pencil = "\u{e69a}"
    case reply = "\u{e699}"
    case primitiveDot = "\u{e698}"
    case mirror = "\u{e697}"
    case plug = "\u{e696}"
    case home = "\u{e695}"
    case question = "\u{e694}"
    case mortarBoard = "\u{e693}"
    case primitiveSquare = "\u{e692}"
    case plus = "\u{e691}"
    case listOrdered = "\u{e690}"
    case play = "\u{e68f}"
    case markGithub = "\u{e68e}"
    case listUnordered = "\u{e68d}"
    case octoface = "\u{e68c}"
    case horizontalRule = "\u{e68b}"
    case gitCompare = "\u{e68a}"
    case logoGithub = "\u{e689}"
    case plusSmall = "\u{e688}"
    case noNewline = "\u{e687}"
    case foldUp = "\u{e686}"
    case markdown = "\u{e685}"
    case lightBulb = "\u{e684}"
    case megaphone = "\u{e683}"
    case kebabHorizontal = "\u{e682}"
    case package = "\u{e681}"
    case jersey = "\u{e680}"
    case info = "\u{e67f}"
    case logoGist = "\u{e67e}"
    case mailRead = "\u{e67d}"
    case mention = "\u{e67c}"
    case mail = "\u{e67b}"
    case gear = "\u{e67a}"
    case fileDirectory = "\u{e679}"
    case key = "\u{e678}"
    case inbox = "\u{e677}"
    case law = "\u{e676}"
    case gitMerge = "\u{e675}"
    case location = "\u{e674}"
    case link = "\u{e673}"
    case linkExternal = "\u{e672}"
    case issueOpened = "\u{e671}"
    case gist = "\u{e670}"
    case keyboard = "\u{e66f}"
    case kebabVertical = "\u{e66e}"
    case issueReopened = "\u{e66d}"
    case eye = "\u{e66c}"
    case fileSubmodule = "\u{e66b}"
    case hubot = "\u{e66a}"
    case fileZip = "\u{e669}"
    case issueClosed = "\u{e668}"
    case heart = "\u{e667}"
    case graph = "\u{e666}"
    case history = "\u{e665}"
    case gitBranch = "\u{e664}"
    case globe = "\u{e663}"
    case file = "\u{e662}"
    case diff = "\u{e661}"
    case dashboard = "\u{e660}"
    case gitPullRequest = "\u{e65f}"
    case githubAction = "\u{e65e}"
    case gistSecret = "\u{e65d}"
    case gitCommit = "\u{e65c}"
    case flame = "\u{e65b}"
    case gift = "\u{e65a}"
    case foldDown = "\u{e659}"
    case filePdf = "\u{e658}"
    case fileCode = "\u{e657}"
    case fileBinary = "\u{e656}"
    case eyeClosed = "\u{e655}"
    case fileSymlinkFile = "\u{e654}"
    case diffModified = "\u{e653}"
    case fileSymlinkDirectory = "\u{e652}"
    case ellipsis = "\u{e651}"
    case clippy = "\u{e650}"
    case deviceMobile = "\u{e64f}"
    case fileMedia = "\u{e64e}"
    case commentDiscussion = "\u{e64d}"
    case diffIgnored = "\u{e64c}"
    case diffRenamed = "\u{e64b}"
    case deviceCameraVideo = "\u{e64a}"
    case diffRemoved = "\u{e649}"
    case dash = "\u{e648}"
    case comment = "\u{e647}"
    case creditCard = "\u{e646}"
    case cloudUpload = "\u{e645}"
    case deviceDesktop = "\u{e644}"
    case deviceCamera = "\u{e643}"
    case database = "\u{e642}"
    case desktopDownload = "\u{e641}"
    case cloudDownload = "\u{e640}"
    case diffAdded = "\u{e63f}"
    case code = "\u{e63e}"
    case broadcast = "\u{e63d}"
    case circuitBoard = "\u{e63c}"
    case chevronUp = "\u{e63b}"
    case chevronLeft = "\u{e63a}"
    case clock = "\u{e639}"
    case circleSlash = "\u{e638}"
    case chevronRight = "\u{e637}"
    case bold = "\u{e636}"
    case checklist = "\u{e635}"
    case chevronDown = "\u{e634}"
    case calendar = "\u{e633}"
    case bug = "\u{e632}"
    case check = "\u{e631}"
    case browser = "\u{e630}"
    case arrowSmallUp = "\u{e62f}"
    case book = "\u{e62e}"
    case briefcase = "\u{e62d}"
    case bell = "\u{e62c}"
    case bookmark = "\u{e62b}"
    case beaker = "\u{e62a}"
    case arrowUp = "\u{e629}"
    case arrowSmallLeft = "\u{e628}"
    case arrowSmallRight = "\u{e627}"
    case arrowSmallDown = "\u{e626}"
    case arrowDown = "\u{e625}"
    case arrowRight = "\u{e624}"
    case arrowLeft = "\u{e623}"
    case arrowBoth = "\u{e622}"
    case archive = "\u{e621}"
    case alert = "\u{e620}"
}
