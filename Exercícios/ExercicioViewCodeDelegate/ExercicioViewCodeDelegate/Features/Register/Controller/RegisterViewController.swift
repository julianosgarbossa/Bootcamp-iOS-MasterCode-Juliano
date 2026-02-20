//
//  RegisterViewController.swift
//  ExercicioViewCodeDelegate
//
//  Created by Juliano Sgarbossa on 20/02/26.
//

import UIKit

class RegisterViewController: UIViewController {

    private var registerScreen: RegisterScreen?
    
    override func loadView() {
        registerScreen = RegisterScreen()
        view = registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerScreen?.delegate(delegate: self)
    }
}

extension RegisterViewController: RegisterScreenDelegate {
    func didTapRegisterButton() {
        print("Registrando... Delegate Implementado!")
    }
}
