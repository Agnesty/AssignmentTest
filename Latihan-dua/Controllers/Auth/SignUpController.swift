//
//  SignUpController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class SignUpController: UIViewController {
    
    //IBOutlet
    @IBOutlet weak var viewWhiteBottom: UIView! {
        didSet {
            viewWhiteBottom.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        }
    }
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    @IBOutlet weak var register: UIButton! {
        didSet {
            register.layer.cornerRadius = CGFloat(10)
        }
    }
    
    //IBAction
    @IBAction func registerButton(_ sender: UIButton) {
        let performHome = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        
        self.navigationController?.pushViewController(performHome, animated: true)
        performHome.navigationItem.hidesBackButton = true
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        let performLogin = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginController") as! LoginController
        
        self.navigationController?.pushViewController(performLogin, animated: true)
        performLogin.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(
            red: CGFloat(0x00) / 255.0,
            green: CGFloat(0x62) / 255.0,
            blue: CGFloat(0xCD) / 255.0,
            alpha: 1.0
        )
        
        usernameTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        fullNameTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        repeatPassword.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        
        register.isEnabled = false
        passwordTextField.isSecureTextEntry = true
        repeatPassword.isSecureTextEntry = true
        
    }
    
    @objc func disabledBtn() {
        if usernameTextField.text != "" , fullNameTextField.text != "", passwordTextField.text != "", repeatPassword.text != "" && passwordTextField.text == repeatPassword.text {
            register.isEnabled = true
            register.backgroundColor = UIColor(
                red: CGFloat(0x00) / 255.0,
                green: CGFloat(0x63) / 255.0,
                blue: CGFloat(0xC6) / 255.0,
                alpha: 1.0
            )
        } else {
            register.isEnabled = false
            register.backgroundColor = UIColor(
                red: CGFloat(0xD1) / 255.0,
                green: CGFloat(0xD1) / 255.0,
                blue: CGFloat(0xD6) / 255.0,
                alpha: 1.0
            )
        }
        
    }
    
    
    

}
