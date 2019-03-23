//
//  SubViewController.swift
//  EFIconFont
//
//  Created by EyreFree on 03/19/2019.
//  Copyright (c) 2019 EyreFree. All rights reserved.
//

import UIKit
import EFIconFont

class SubViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableView: UITableView = UITableView()

    let icons: [(key: String, value: String)]
    let font: UIFont?

    init(title: String, font: UIFont?, dictionary: [String : String]) {
        self.icons = Array(dictionary)
        self.font = font
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
        return icons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier: String = "Title"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: reuseIdentifier)
        cell.detailTextLabel?.font = font
        cell.textLabel?.text = ".\(icons[indexPath.row].key)"
        cell.detailTextLabel?.text = icons[indexPath.row].value
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}
