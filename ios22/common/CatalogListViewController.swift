//
//  CatalogListViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 19/12/23.
//

import UIKit

class CatalogListViewController: UIViewController, UITableViewDataSource {
    
    private let tableView = UITableView()
    private let cell = "cell"
    private let carList = ["ic_man",
                           "ic_car",
                           "ic_man",
                           "ic_car",
                           "ic_man",
                           "ic_car",
                           "ic_man",
                           "ic_car"]
    
    private let orderList: [Order] = [Order(customerImage: "ic_man",
                                            customerName: "Kianu Rivz",
                                            customerFoodName: "burger",
                                            cookedTime: "Todar | 14.00",
                                            foodImage: "ic_car")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cell)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // carList.count
        orderList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
//        cell.textLabel?.text = "cell: \(indexPath.row)"
//        cell.detailTextLabel?.text = "detailTextLabel: \(indexPath.row)"
//        cell.imageView?.image = UIImage(systemName: "star")
//        cell.backgroundColor = .cyan
//        return cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cell, for: indexPath) as! TableViewCell
      // cell.setData(image: carList[indexPath.row])
        cell.setOrderCellData(order: orderList[indexPath.row])
        return cell
    }
}

extension CatalogListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt: \(indexPath.row)")
    }
}
