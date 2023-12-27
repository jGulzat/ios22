//
//  GoodsCellTableViewCell.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 23/12/23.
//

import UIKit

class GoodsCell: UITableViewCell {
    
    private let BGView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
    //    view.backgroundColor = .cyan
        return view
    }()

    private let goodsImage: UIImageView = {
       let image = UIImageView()
        image.layer.cornerRadius = 11
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let goodsName: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(BGView)
        
        NSLayoutConstraint.activate([
            BGView.topAnchor.constraint(equalTo: contentView.topAnchor),
            BGView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            BGView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            BGView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            BGView.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        BGView.addSubview(goodsImage)
        
        NSLayoutConstraint.activate([
            goodsImage.topAnchor.constraint(equalTo: BGView.topAnchor),
            goodsImage.leadingAnchor.constraint(equalTo: BGView.leadingAnchor),
            goodsImage.trailingAnchor.constraint(equalTo: BGView.trailingAnchor),
            goodsImage.heightAnchor.constraint(equalToConstant: 166)
        ])
        
        BGView.addSubview(goodsName)
        
        NSLayoutConstraint.activate([
            goodsName.topAnchor.constraint(equalTo: goodsImage.bottomAnchor, constant: 8),
            goodsName.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor),
            goodsName.trailingAnchor.constraint(equalTo: goodsImage.trailingAnchor)
        ])
    }
    
    func setCellData(goods: Goods) {
        goodsImage.image = UIImage(named: goods.image)
        goodsName.text = goods.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
