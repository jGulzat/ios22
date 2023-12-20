//
//  TableViewViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 15/12/23.
//

import UIKit

class TableViewViewController: UIViewController {

    private let cell = "cell"
    
    private let contacts: [Contact] = [Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                               image: "star"),
                                       Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                                                                  image: "star"),
                                       Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                                                                  image:"star"),
                                       Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                                                                  image: "star"),
                                       Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                                                                  image: "star"),
                                       Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                                                                  image: "star"),
                                       Contact(name: "Bayaman", phoneNumber: "gvfgvgfvcgfcv",
                                                                                  image: "star")]
    
    
    private let contactTableView: UITableView = {
       let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactTableView.dataSource = self
    //    contactTableView.register(UITableViewCell.self, forCellReuseIdentifier: cell)
        
        view.addSubview(contactTableView)
        
        NSLayoutConstraint.activate([
            contactTableView.topAnchor.constraint(equalTo: view.topAnchor),
            contactTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contactTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contactTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension TableViewViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // UITableViewCell
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.textLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        cell.textLabel?.textColor = .black
        cell.imageView?.image = UIImage(systemName: contacts[indexPath.row].image)
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        cell.detailTextLabel?.textColor = .gray

        return cell
        
        // dequeueReusableCell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: cell)
//        cell?.textLabel?.text = "dequeueReusableCell: \(indexPath.row)"
//        cell?.imageView?.image = UIImage(systemName: "home")
//        return cell ?? UITableViewCell()
    }
    
}
