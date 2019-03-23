//
//  CGFloat+.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/3/23.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import UIKit

extension CGFloat {
    
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    
    static let statusBarHeight: CGFloat = 20 + topSafeAreaHeight
    static let navigationBarHeight: CGFloat = 44
    static let statusAndNavigationHeight: CGFloat = statusBarHeight + navigationBarHeight
    
    static let topSafeAreaHeight: CGFloat = UIDevice.isiPhoneX ? 22 : 0
    static let bottomSafeAreaHeight: CGFloat = UIDevice.isiPhoneX ? 34 : 0
}
