//
//  GalleryViewController.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/3/24.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import UIKit
import EFIconFont

class GalleryViewController: UIViewController {

    let icons: [(key: String, value: EFIconFontProtocol)]

    init(title: String, dictionary: [(key: String, value: EFIconFontProtocol)]) {
        self.icons = dictionary
        super.init(nibName: nil, bundle: nil)
        self.navigationItem.title = title
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupControls()
    }

    func setupControls() {
        let textView = UITextView()
        if #available(iOS 11.0, *) {
            textView.contentInsetAdjustmentBehavior = .never
        }
        textView.contentInset = UIEdgeInsets(top: CGFloat.statusAndNavigationHeight, left: 0, bottom: 0, right: 0)
        textView.contentOffset = CGPoint(x: 0, y: -CGFloat.statusAndNavigationHeight)
        textView.isEditable = false
        let content: NSMutableAttributedString = NSMutableAttributedString()
        for item in icons {
            if let attributedString = item.value.attributedString(size: 24) {
                content.append(attributedString)
            }
        }
        textView.attributedText = content
        textView.frame = CGRect(origin: CGPoint.zero, size: UIScreen.main.bounds.size)
        self.view.addSubview(textView)
    }
}
