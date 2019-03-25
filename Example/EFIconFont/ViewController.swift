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
    let iconfonts: [(name: String, `enum`: Any)] = [
        ("AntDesign", EFIconFont.antDesign),
        ("AwesomeBrands", EFIconFont.awesomeBrands),
        ("AwesomeRegular", EFIconFont.awesomeRegular),
        ("AwesomeSolid", EFIconFont.awesomeSolid),
        ("ElusiveIcons", EFIconFont.elusiveIcons),
        ("Ionicons", EFIconFont.ionicons),
        ("MaterialIcons", EFIconFont.materialIcons),
        ("Octicons", EFIconFont.octicons),
        ("Typicons", EFIconFont.typicons)
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
        
        let items: [String : EFIconFontProtocol] = {
            switch indexPath.row {
            case 0:
                return EFIconFont.antDesign.dictionary
            case 1:
                return EFIconFont.awesomeBrands.dictionary
            case 2:
                return EFIconFont.awesomeRegular.dictionary
            case 3:
                return EFIconFont.awesomeSolid.dictionary
            case 4:
                return EFIconFont.elusiveIcons.dictionary
            case 5:
                return EFIconFont.ionicons.dictionary
            case 6:
                return EFIconFont.materialIcons.dictionary
            case 7:
                return EFIconFont.octicons.dictionary
            case 8:
                return EFIconFont.typicons.dictionary
            default:
                return [:]
            }
        }()
        let title: String = "\(iconfonts[indexPath.row].enum)"
        let subViewController: SubViewController = SubViewController(title: title, dictionary: items)
        self.navigationController?.pushViewController(subViewController, animated: true)
    }
}
