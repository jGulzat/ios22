//
//  FinishViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 8/12/23.
//

import UIKit

class FinishViewController: UIViewController {

    var goods: Goods?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .cyan
        guard let goods = goods else { return }
        
        print("goods: \(goods)")
        
        print("name: \(goods.name)")
        
        print("color: \(goods.detail.roomType)")
        
        
    }
    
}
