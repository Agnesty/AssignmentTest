//
//  LoginController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class LoginController: UIViewController {
    
    //IBOutlet
    @IBOutlet weak var viewBottomWhite: UIView! {
        didSet {
            viewBottomWhite.roundCorners(corners: [.topLeft, .topRight], radius: 20.0)
        }
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginNow: UIButton! {
        didSet {
            loginNow.layer.cornerRadius = CGFloat(10)
        }
    }
    
    
    //IBAction
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        let performForgotScreen = UIStoryboard(name: "ForgotPassword", bundle: nil).instantiateViewController(withIdentifier: "ForgotPasswordController") as! ForgotPasswordController
        
        self.navigationController?.pushViewController(performForgotScreen, animated: true)
        performForgotScreen.navigationItem.hidesBackButton = true
    }
    
    @IBAction func loginNowAction(_ sender: UIButton) {
    let performHome = UIStoryboard(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarController") as! TabBarController

        self.navigationController?.pushViewController(performHome, animated: true)
        performHome.navigationItem.hidesBackButton = true
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        let performRegister = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: "SignUpController") as! SignUpController
        
        self.navigationController?.pushViewController(performRegister, animated: true)
        performRegister.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .systemBlue
        self.view.backgroundColor = UIColor(
            red: CGFloat(0x00) / 255.0,
            green: CGFloat(0x62) / 255.0,
            blue: CGFloat(0xCD) / 255.0,
            alpha: 1.0
        )
        
        usernameTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        
        loginNow.isEnabled = false
        passwordTextField.isSecureTextEntry = true

    }
    
    @objc func disabledBtn() {
        if usernameTextField.text != "" && passwordTextField.text != "" {
            loginNow.isEnabled = true
            loginNow.backgroundColor = UIColor(
                red: CGFloat(0x00) / 255.0,
                green: CGFloat(0x63) / 255.0,
                blue: CGFloat(0xC6) / 255.0,
                alpha: 1.0
            )
        } else {
            loginNow.isEnabled = false
            loginNow.backgroundColor = UIColor(
                red: CGFloat(0xD1) / 255.0,
                green: CGFloat(0xD1) / 255.0,
                blue: CGFloat(0xD6) / 255.0,
                alpha: 1.0
            )
        }
    }
    
    


}
