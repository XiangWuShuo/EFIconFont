//
//  ViewController.swift
//  EFIconFont
//
//  Created by EyreFree on 03/19/2019.
//  Copyright (c) 2019 EyreFree. All rights reserved.
//

import UIKit
import EFIconFont

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView: UITableView = UITableView()
    let iconfonts: [(name: String, `enum`: String, dictionary: [String : EFIconFontProtocol])] = [
        ("AntDesign", "\(EFIconFont.antDesign)", EFIconFont.antDesign.dictionary),
        ("AwesomeBrands", "\(EFIconFont.awesomeBrands)", EFIconFont.awesomeBrands.dictionary),
        ("AwesomeRegular", "\(EFIconFont.awesomeRegular)", EFIconFont.awesomeRegular.dictionary),
        ("AwesomeSolid", "\(EFIconFont.awesomeSolid)", EFIconFont.awesomeSolid.dictionary),
        ("ElusiveIcons", "\(EFIconFont.elusiveIcons)", EFIconFont.elusiveIcons.dictionary),
        ("Ionicons", "\(EFIconFont.ionicons)", EFIconFont.ionicons.dictionary),
        ("MaterialIcons", "\(EFIconFont.materialIcons)", EFIconFont.materialIcons.dictionary),
        ("Octicons", "\(EFIconFont.octicons)", EFIconFont.octicons.dictionary),
        ("OpenIconic", "\(EFIconFont.openIconic)", EFIconFont.openIconic.dictionary),
        ("Typicons", "\(EFIconFont.typicons)", EFIconFont.typicons.dictionary)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "EFIconFont"
        setupControls()
    }
    
    func setupControls() {
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        }
        tableView.contentInset = UIEdgeInsets(top: CGFloat.statusAndNavigationHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -CGFloat.statusAndNavigationHeight)
        tableView.estimatedRowHeight = 0
        tableView.estimatedSectionHeaderHeight = 0
        tableView.estimatedSectionFooterHeight = 0
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 0, width: CGFloat.screenWidth, height: CGFloat.screenHeight)
        self.view.addSubview(tableView)
    }
    
    // MARK:- UITableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconfonts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier: String = "Title"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        cell.textLabel?.text = iconfonts[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let item = iconfonts[indexPath.row]
        let title: String = item.enum
        let subViewController: SubViewController = SubViewController(title: title, dictionary: item.dictionary)
        self.navigationController?.pushViewController(subViewController, animated: true)
    }
}
