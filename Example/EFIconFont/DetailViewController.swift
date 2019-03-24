//
//  DetailViewController.swift
//  EFIconFont_Example
//
//  Created by EyreFree on 2019/3/24.
//  Copyright © 2019年 CocoaPods. All rights reserved.
//

import UIKit
import EFIconFont

class DetailViewController: UIViewController {

    let icon: EFIconFontProtocol

    init(title: String, icon: EFIconFontProtocol) {
        self.icon = icon
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
        self.view.backgroundColor = UIColor.white

        let imageView = UIImageView()
        imageView.frame = CGRect(
            x: 12,
            y: CGFloat.statusAndNavigationHeight,
            width: CGFloat.screenWidth - 24,
            height: CGFloat.screenHeight - CGFloat.statusAndNavigationHeight * 2
        )
        imageView.image = icon.image(size: imageView.frame.size, foregroundColor: UIColor.black)
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
    }
}
