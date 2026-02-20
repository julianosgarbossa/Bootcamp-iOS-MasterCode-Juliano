//
//  RegisterScreen.swift
//  ExercicioViewCodeDelegate
//
//  Created by Juliano Sgarbossa on 20/02/26.
//

import UIKit

protocol RegisterScreenDelegate: AnyObject {
    func didTapRegisterButton()
}

class RegisterScreen: UIView {
    
    private weak var delegate: RegisterScreenDelegate?
    
    func delegate(delegate: RegisterScreenDelegate) {
        self.delegate = delegate
    }

    private lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Appearance
        view.backgroundColor = .white
        
        // MARK: - Layer
        view.layer.cornerRadius = 48
        view.layer.maskedCorners = [
            .layerMinXMinYCorner,
            .layerMaxXMinYCorner
        ]
        view.layer.masksToBounds = true
        
        return view
    }()
    
    private lazy var registerTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        label.text = "Cadastro"
        label.textColor = UIColor(red: 120/255, green: 120/255, blue: 120/255, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 1
        
        // MARK: - Font
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        label.text = "Nome"
        label.textColor = UIColor(red: 120/255, green: 120/255, blue: 120/255, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 1
        
        // MARK: - Font
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        textField.placeholder = "Juliano Sgarbossa"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textAlignment = .left
        
        // MARK: - Border Style
        textField.borderStyle = .none
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.rightViewMode = .always
        textField.layer.cornerRadius = 24
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 253/255, green: 155/255, blue: 1/255, alpha: 1).cgColor
        
        // MARK: - Keyboard
        textField.keyboardType = .default
        textField.returnKeyType = .next
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = false
        
        return textField
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        label.text = "Email"
        label.textColor = UIColor(red: 120/255, green: 120/255, blue: 120/255, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 1
        
        // MARK: - Font
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        textField.placeholder = "exemplo@email.com"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textAlignment = .left
        
        // MARK: - Border Style
        textField.borderStyle = .none
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.rightViewMode = .always
        textField.layer.cornerRadius = 24
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 253/255, green: 155/255, blue: 1/255, alpha: 1).cgColor
        
        // MARK: - Keyboard
        textField.keyboardType = .emailAddress
        textField.returnKeyType = .next
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = false
        
        return textField
    }()
    
    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        label.text = "Senha"
        label.textColor = UIColor(red: 120/255, green: 120/255, blue: 120/255, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 1
        
        // MARK: - Font
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        textField.placeholder = "password"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textAlignment = .left
        
        // MARK: - Border Style
        textField.borderStyle = .none
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.rightViewMode = .always
        textField.layer.cornerRadius = 24
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 253/255, green: 155/255, blue: 1/255, alpha: 1).cgColor
        
        // MARK: - Keyboard
        textField.keyboardType = .default
        textField.returnKeyType = .done
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    private lazy var confirmPasswordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        label.text = "Confirmar Senha"
        label.textColor = UIColor(red: 120/255, green: 120/255, blue: 120/255, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 1
        
        // MARK: - Font
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private lazy var confirmpPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Text
        textField.placeholder = "password confirmação"
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textAlignment = .left
        
        // MARK: - Border Style
        textField.borderStyle = .none
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.rightViewMode = .always
        textField.layer.cornerRadius = 24
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 253/255, green: 155/255, blue: 1/255, alpha: 1).cgColor
        
        // MARK: - Keyboard
        textField.keyboardType = .default
        textField.returnKeyType = .done
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Title
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
        
        // MARK: - Font
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.numberOfLines = 1
        
        // MARK: - Background
        button.backgroundColor = UIColor(red: 253/255, green: 155/255, blue: 1/255, alpha: 1)
        
        // MARK: - Layer
        button.layer.cornerRadius = 24
        button.clipsToBounds = true
        
        // MARK: - Interaction
         button.addTarget(self, action: #selector(didTapRegisterButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc
    private func didTapRegisterButton(_ sender: UIButton) {
        delegate?.didTapRegisterButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addVisualElements() {
        
        backgroundColor = UIColor(red: 253/255, green: 155/255, blue: 1/255, alpha: 1)
        
        addSubview(contentView)
        addSubview(registerTitleLabel)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(confirmPasswordLabel)
        addSubview(confirmpPasswordTextField)
        addSubview(registerButton)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            registerTitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            registerTitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: registerTitleLabel.bottomAnchor, constant: 24),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 48),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
            emailTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
            passwordTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            confirmPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            confirmPasswordLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            
            confirmpPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor, constant: 12),
            confirmpPasswordTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            confirmpPasswordTextField.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            confirmpPasswordTextField.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
            
            registerButton.topAnchor.constraint(equalTo: confirmpPasswordTextField.bottomAnchor, constant: 44),
            registerButton.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            registerButton.heightAnchor.constraint(equalTo: nameTextField.heightAnchor),
        ])
    }
}
