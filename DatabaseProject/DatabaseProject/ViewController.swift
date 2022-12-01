//
//  ViewController.swift
//  DatabaseProject
//
//  Created by nathan on 11/29/22.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var LoginSignupButton: UIButton!
    var radius = 20
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usernameTextField.layer.cornerRadius = CGFloat(radius)
        passwordTextField.layer.cornerRadius = CGFloat(radius)
        LoginSignupButton.layer.cornerRadius = CGFloat(radius)
        let backBarButtonItem = UIBarButtonItem(title: "Log Out", style: .plain, target: nil, action: nil)
                navigationItem.backBarButtonItem = backBarButtonItem
        passwordTextField.isSecureTextEntry = true
    }

}

