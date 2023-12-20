//
//  TableViewCell.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 19/12/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    private let BGView: UIView = {
       let view = UIView()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let carImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "ic_car")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    private let customerName: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(BGView)
        
        NSLayoutConstraint.activate([
            BGView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            BGView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            BGView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            BGView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            BGView.heightAnchor.constraint(equalToConstant: 400)
        ])
        
        BGView.addSubview(carImageView)
        
        NSLayoutConstraint.activate([
            carImageView.topAnchor.constraint(equalTo: BGView.topAnchor, constant: 4),
            carImageView.leadingAnchor.constraint(equalTo: BGView.leadingAnchor, constant: 8),
            carImageView.trailingAnchor.constraint(equalTo: BGView.trailingAnchor, constant: -8)
        ])
        
        BGView.addSubview(customerName)
        
        NSLayoutConstraint.activate([
            customerName.topAnchor.constraint(equalTo: carImageView.bottomAnchor, constant: 4),
            customerName.leadingAnchor.constraint(equalTo: BGView.leadingAnchor, constant: 8),
            customerName.bottomAnchor.constraint(equalTo: BGView.bottomAnchor, constant: -8)
        ])
    }
    
    func setData(image: String) {
        carImageView.image = UIImage(named: image)
    }
    
    func setOrderCellData(order: Order) {
        carImageView.image = UIImage(named: order.foodImage)
        customerName.text = order.customerName
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
