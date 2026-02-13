//
//  LoginScreen.swift
//  PrimeiroProjetoViewCode
//
//  Created by Juliano Sgarbossa on 12/02/26.
//

import UIKit

class LoginScreen: UIView {
    
    private lazy var titleLoginLabel: UILabel = {
        let label = UILabel()
        
        // Constraint
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // Text
        label.text = "Login"
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        
        // Font
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
    
        return label
    }()
    
    private lazy var personImageView: UIImageView = {
        let imageView = UIImageView()
        
        // Constraint
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Image
        imageView.image = UIImage(systemName: "person.circle")
        
        // Content Mode
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        // Tint
        imageView.tintColor = .black
        
        return imageView
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        
        // Constraint
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // Text
        label.text = "E-mail"
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 1
        
        // Font
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        
        // Constraint
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // Text
        textField.placeholder = "Digite seu e-mail"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textAlignment = .left
        
        // Border Style
        textField.borderStyle = .roundedRect
        
        // Keyboard
        textField.keyboardType = .emailAddress
        textField.returnKeyType = .next
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .yes
        
        // Clear Button
        textField.clearButtonMode = .whileEditing
        
        return textField
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        
        // Constraint
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // Text
        label.text = "Senha"
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 1
        
        // Font
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        
        // Constraint
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // Text
        textField.placeholder = "Digite sua senha"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textAlignment = .left
        
        // Border Style
        textField.borderStyle = .roundedRect
        
        // Keyboard
        textField.keyboardType = .default
        textField.returnKeyType = .next
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = true
        
        // Clear Button
        textField.clearButtonMode = .whileEditing
        
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        
        // Constraint
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Title
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        // Font
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.numberOfLines = 1
        
        // Background
        button.backgroundColor = .systemBlue
        
        // Layer
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 0
        button.clipsToBounds = true
        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemCyan
        addVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addVisualElements() {
        
        addSubview(titleLoginLabel)
        addSubview(personImageView)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLoginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLoginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            personImageView.topAnchor.constraint(equalTo: titleLoginLabel.bottomAnchor, constant: 20),
            personImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            personImageView.heightAnchor.constraint(equalToConstant: 100),
            personImageView.widthAnchor.constraint(equalToConstant: 100),
            
            emailLabel.topAnchor.constraint(equalTo: personImageView.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 42),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 42),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 35),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 42),
        ])
    }
}
