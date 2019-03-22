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
        let colors: [UIColor] = [UIColor.black, UIColor.white, UIColor.blue, UIColor.red, UIColor.green, UIColor.purple, UIColor.orange, UIColor.yellow, UIColor.gray]
        let textView = UITextView()
        textView.isEditable = false
        let content: NSMutableAttributedString = NSMutableAttributedString()
        for (index, item) in EFIconFont.antDesign.allCases.enumerated() {
            if let attributedString = item.attributedString(size: 32, foregroundColor: colors[index % colors.count], backgroundColor: colors[(index + 1) % colors.count]) {
                content.append(attributedString)
            }
        }
        textView.attributedText = content
        textView.frame = CGRect(origin: CGPoint.zero, size: UIScreen.main.bounds.size)
        self.view.addSubview(textView)
        
        // let imageView = UIImageView()
        // imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        // imageView.image = EFIconFontFontAwesomeBrands.adobe.image(size: CGSize(width: 100, height: 100), foregroundColor: UIColor.white, backgroundColor: UIColor.green)
        // self.view.addSubview(imageView)
    }
}
