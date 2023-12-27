//
//  CatalogViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 23/12/23.
//

import UIKit

class CatalogViewController: UIViewController {

    private let tableView = UITableView()
    private var goodsList: [Goods] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(GoodsCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        setData()
    }
    
    private func setData() {
        goodsList = [Goods(name: "Furniture", count: 1500, image: "ic_car",
                           detail: Detail(price: 125.6, roomType: "Office, Living Room",
                                          color: "green", material: "vcgfhvf",
                                          dimensions: "25 * 45 *35", weight: 23.5)),
                     Goods(name: "Furniture", count: 1500, image: "ic_car",
                                        detail: Detail(price: 125.6, roomType: "Office, Living Room",
                                                       color: "green", material: "vcgfhvf",
                                                       dimensions: "25 * 45 *35", weight: 23.5)),
                     Goods(name: "Furniture", count: 1500, image: "ic_car",
                                        detail: Detail(price: 125.6, roomType: "Office, Living Room",
                                                       color: "green", material: "vcgfhvf",
                                                       dimensions: "25 * 45 *35", weight: 23.5)),
                     Goods(name: "Furniture", count: 1500, image: "ic_car",
                                        detail: Detail(price: 125.6, roomType: "Office, Living Room",
                                                       color: "green", material: "vcgfhvf",
                                                       dimensions: "25 * 45 *35", weight: 23.5))
        ]
    }
}

extension CatalogViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        goodsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! GoodsCell
        cell.setCellData(goods: goodsList[indexPath.row])
        return cell
    }
}

extension CatalogViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = FinishViewController()
        vc.goods = goodsList[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
