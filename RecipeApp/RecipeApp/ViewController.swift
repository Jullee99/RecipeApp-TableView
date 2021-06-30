//
//  ViewController.swift
//  RecipeApp
//
//  Created by DCS on 23/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myLabelCake:UILabel = {
        let label = UILabel()
        label.text = "Professional Cake Recipe"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.font = .systemFont(ofSize:25)
        label.textColor = .white
        return label
    }()
    
    
    
    private let myTextFieldCake:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Email"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .gray
        textField.textColor = .white
        textField.autocapitalizationType = .none
        return textField
    }()
    
    private let myTextFieldPwd:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.backgroundColor = .gray
        textField.textColor = .white
        return textField
    }()
    
    private let myButtonLogin: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    @objc private func handleLogin() {
        let vc = CakeBoard()
        print("click..")
        navigationController?.pushViewController(vc, animated: true)
    }
     override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "10.jpg")!)
        view.addSubview(myLabelCake)
        view.addSubview(myTextFieldCake)
        view.addSubview(myTextFieldPwd)
        view.addSubview(myButtonLogin)
        // Do any additional setup after loading the view
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabelCake.frame = CGRect(x: 30, y: view.safeAreaInsets.top + 40, width: view.width - 90, height: 40)
        myTextFieldCake.frame = CGRect(x: 30, y: myLabelCake.bottom + 100, width: view.width - 60, height: 40)
        myTextFieldPwd.frame = CGRect(x: 30, y: myTextFieldCake.bottom + 20, width: view.width - 60, height: 40)
        myButtonLogin.frame = CGRect(x: 30, y: myTextFieldPwd.bottom + 20, width: view.width - 60, height: 40)
    }

}
