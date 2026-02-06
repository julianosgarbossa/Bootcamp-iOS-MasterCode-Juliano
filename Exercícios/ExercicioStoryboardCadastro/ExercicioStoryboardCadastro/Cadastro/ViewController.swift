//
//  ViewController.swift
//  ExercicioStoryboardCadastro
//
//  Created by Juliano Sgarbossa on 05/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextFields()
        configButton()
    }
    
    func configTextFields() {
        nameTextField.text = "Juliano"
        emailTextField.text = "julianosgarbossa@gmail.com"
        passwordTextField.text = "12345678"
        confirmPasswordTextField.text = "12345678"
    }
    
    func configButton() {
    let isEnable: Bool = validateTextFields()
        registerButton.isEnabled = isEnable
        registerButton.backgroundColor = isEnable ? .white : .systemGray
    }
    
    func validateTextFields() -> Bool {
        return !(nameTextField.text?.isEmpty ?? true) &&
               !(emailTextField.text?.isEmpty ?? true) &&
               !(passwordTextField.text?.isEmpty ?? true) &&
               !(confirmPasswordTextField.text?.isEmpty ?? true)
    }

    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        view.backgroundColor = .red
    }
    
}

