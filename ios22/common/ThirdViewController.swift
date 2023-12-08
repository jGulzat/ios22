//
//  ThirdViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 12/12/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @objc private let backToRootLabel: UILabel = {
       let label = UILabel()
        label.text = "back To Root"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        return label
    }()
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        view.addSubview(backToRootLabel)
        
        NSLayoutConstraint.activate([
            backToRootLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                                    constant: -200),
            backToRootLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40)
        ])
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(backToRoot))
        backToRootLabel.addGestureRecognizer(gesture)
    }
    
    @objc func backToRoot(_ sender: UITapGestureRecognizer) {
       print("backToRoot")
     //   navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)
    }

}
