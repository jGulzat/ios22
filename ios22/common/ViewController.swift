//
//  ViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 8/12/23.
//

import UIKit

class ViewController: UIViewController {

    private let height = UIScreen.main.bounds.height
   
    private let bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Employee Id / Email"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameTF: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Enter a name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        return tf
    }()
    
    private let loginButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 40/255, green: 85/255, blue: 174/255, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isEnabled = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("height: \(height)")
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = .cyan
        title = "Start"
        configureBGView()
        configureNameLabel()
        configureNameTF()
        configureLoginButton()
    }
    
    private func configureBGView() {
        view.addSubview(bgView)
        
        NSLayoutConstraint.activate([
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgView.heightAnchor.constraint(equalToConstant: height/2)
        ])
    }
    
    private func configureNameLabel() {
        bgView.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 42),
            nameLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 24),
            nameLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -24)
        ])
    }
    
    private func configureNameTF() {
        bgView.addSubview(nameTF)
        
        NSLayoutConstraint.activate([
            nameTF.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 12),
            nameTF.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            nameTF.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            nameTF.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func configureLoginButton() {
        bgView.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: bgView.bottomAnchor, constant: -100),
            loginButton.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 168),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        loginButton.addTarget(self, action: #selector(validateUserData), for: .touchUpInside)
    }
    
    @objc func validateUserData(_ sender: UIButton) {
        guard let text = nameTF.text else { return }
        
//        if text.isEmpty || text.count < 8 {
//            nameTF.layer.borderWidth = 2
//        } else {
//            nameTF.layer.borderWidth = 0
//            // let vc = FinishViewController()
//             let vc = SecondViewController()
//            navigationController?.pushViewController(vc, animated: true)
//        }
        
     //   let vc = SecondViewController()
        let vc = TableViewViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

