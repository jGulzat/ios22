//
//  SecondViewController.swift
//  ios22
//
//  Created by Gulzat Zheenbek kyzy on 8/12/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let password: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Enter a password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        tf.tag = 0
        return tf
    }()
    
    private let confirmPassword: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Confirm password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        tf.isSecureTextEntry = true
        tf.tag = 1
        return tf
    }()
    
    private let signInLabel: UILabel = {
       let label = UILabel()
        label.text = "Sign in"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isUserInteractionEnabled = true
        return label
    }()
    
    private let loginButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 40/255, green: 85/255, blue: 174/255, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isEnabled = false
        button.backgroundColor = .gray
        return button
    }()
    
    override func viewDidLoad() {
        
        initUI()
    }
    
    private func initUI() {
        view.backgroundColor = .white
        
      //  configureSignInLabel()
        configurePasswordTF()
        configureConfirmPasswordTF()
        configureLoginBtn()
    }
    
    private func configureSignInLabel() {
        view.addSubview(signInLabel)
        NSLayoutConstraint.activate([
            signInLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40)
        ])
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(backToRoot))
        signInLabel.addGestureRecognizer(gesture)
    }
    
    private func configurePasswordTF() {
        view.addSubview(password)
    
        NSLayoutConstraint.activate([
            password.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            password.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            password.heightAnchor.constraint(equalToConstant: 44),
            password.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        password.addTarget(self, action: #selector(validateTF), for: .editingChanged)
    }
    
    private func configureConfirmPasswordTF() {
        view.addSubview(confirmPassword)
        
        NSLayoutConstraint.activate([
            confirmPassword.leadingAnchor.constraint(equalTo: password.leadingAnchor),
            confirmPassword.trailingAnchor.constraint(equalTo: password.trailingAnchor),
            confirmPassword.heightAnchor.constraint(equalToConstant: 44),
            confirmPassword.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 8)
        ])
        
        confirmPassword.addTarget(self, action: #selector(validateTF), for: .editingChanged)
    }
    
    private func configureLoginBtn() {
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.leadingAnchor.constraint(equalTo: password.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: password.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 44),
            loginButton.topAnchor.constraint(equalTo: confirmPassword.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func validateTF(_ textField: UITextField) {
        if password.text == confirmPassword.text {
          //  signInLabel.text = "passwords are rigth"
            loginButton.isEnabled = true
            loginButton.backgroundColor = .blue
        } else {
          //  signInLabel.text = "passwords are not rigth"
            loginButton.isEnabled = false
            loginButton.backgroundColor = .gray
        }
    }
    
    @objc func backToRoot(_ sender: UITapGestureRecognizer) {
       print("backToRoot")
      //  navigationController?.popViewController(animated: true) //
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension SecondViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textField: \(textField.text)")
    }
    
    func textFieldDidEndEditing(_: UITextField, reason: UITextField.DidEndEditingReason) {
        
    }
}
