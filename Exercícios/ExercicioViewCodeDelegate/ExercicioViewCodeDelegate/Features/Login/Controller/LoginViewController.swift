//
//  LoginViewController.swift
//  ExercicioViewCodeDelegate
//
//  Created by Juliano Sgarbossa on 20/02/26.
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
        loginScreen?.delegate(delegate: self)
    }
}

extension LoginViewController: LoginScreenDelegate {
    func didTapLoginButton() {
        print("Logando... Delegate Implementado!")
    }
    
    func didTapRegisterButton() {
        let registerViewController = RegisterViewController()
        navigationController?.pushViewController(registerViewController, animated: true)
    }
}

