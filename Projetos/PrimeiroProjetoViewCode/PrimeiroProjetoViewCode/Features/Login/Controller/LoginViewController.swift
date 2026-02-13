//
//  LoginViewController.swift
//  PrimeiroProjetoViewCode
//
//  Created by Juliano Sgarbossa on 12/02/26.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var loginScreen: LoginScreen?

    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

