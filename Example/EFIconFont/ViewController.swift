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
        ("Octicons", EFIconFont.octicons)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "EFIconFont"
        setupControls()
    }
    
    func setupControls() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect(origin: CGPoint.zero, size: UIScreen.main.bounds.size)
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

        let items: (font: UIFont?, icons: [String : String]) = {
            switch indexPath.row {
            case 0:
                return (EFIconFont.antDesign.accountBook.font(size: 32), EFIconFont.antDesign.dictionary)
            case 1:
                return (EFIconFont.awesomeBrands.accessibleIcon.font(size: 32), EFIconFont.awesomeBrands.dictionary)
            case 2:
                return (EFIconFont.awesomeRegular.addressCard.font(size: 32), EFIconFont.awesomeRegular.dictionary)
            case 3:
                return (EFIconFont.awesomeSolid.addressBook.font(size: 32), EFIconFont.awesomeSolid.dictionary)
            case 4:
                return (EFIconFont.elusiveIcons.addressBook.font(size: 32), EFIconFont.elusiveIcons.dictionary)
            case 5:
                return (EFIconFont.ionicons.iosAddCircle.font(size: 32), EFIconFont.ionicons.dictionary)
            case 6:
                return (EFIconFont.octicons.arrowDown.font(size: 32), EFIconFont.octicons.dictionary)
            default:
                return (UIFont.systemFont(ofSize: 32), [:])
            }
        }()
        let title: String = "\(iconfonts[indexPath.row].enum)"
        let subViewController: SubViewController = SubViewController(title: title, font: items.font, dictionary: items.icons)
        self.navigationController?.pushViewController(subViewController, animated: true)
    }
}
