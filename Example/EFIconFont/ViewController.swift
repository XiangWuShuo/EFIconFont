//
//  ViewController.swift
//  EFIconFont
//
//  Created by EyreFree on 03/19/2019.
//  Copyright (c) 2019 EyreFree. All rights reserved.
//

import UIKit
import EFIconFont

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupControls()
    }

    func setupControls() {
        let textView = UITextView()
        textView.isEditable = false
        let content: NSMutableAttributedString = NSMutableAttributedString()
        for item in EFIconFontFontAwesomeBrands.allCases {
            if let attributedString = item.attributedString(size: 32) {
                content.append(attributedString)
            }
        }
        textView.attributedText = content
        self.view.addSubview(textView)
        textView.frame = CGRect(origin: CGPoint.zero, size: UIScreen.main.bounds.size)
    }
}
