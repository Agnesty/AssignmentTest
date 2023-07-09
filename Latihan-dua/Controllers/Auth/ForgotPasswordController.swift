//
//  ForgotPasswordController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class ForgotPasswordController: UIViewController {
    
    //IBOutlet
    @IBOutlet weak var viewWhiteBottom: UIView! {
        didSet{
            viewWhiteBottom.roundCorners(corners: [.topLeft, .topRight], radius: 20)
        }
    }
    
    @IBOutlet weak var noKTPtextField: UITextField! {
        didSet {
            noKTPtextField.autocorrectionType = .no
            noKTPtextField.keyboardType = .numberPad
            noKTPtextField.delegate = self
            
        }
    }
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPassTextField: UITextField!
    @IBOutlet weak var resetPass: UIButton! {
        didSet {
            resetPass.layer.cornerRadius = CGFloat(10)
        }
    }
    
    //IBAction
    @IBAction func resetPaswordAction(_ sender: UIButton) {
        let performLogin = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginController") as! LoginController
        
        self.navigationController?.pushViewController(performLogin, animated: true)
        performLogin.navigationItem.hidesBackButton = true
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
        
        noKTPtextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        repeatPassTextField.addTarget(self, action: #selector(disabledBtn), for: .editingChanged)
        
        resetPass.isEnabled = false
        passwordTextField.isSecureTextEntry = true
        repeatPassTextField.isSecureTextEntry = true
        
    }
    
    @objc func disabledBtn() {
        if noKTPtextField.text != "", passwordTextField.text != "", repeatPassTextField.text != "" && passwordTextField.text == repeatPassTextField.text {
            resetPass.isEnabled = true
            resetPass.backgroundColor = UIColor(
                red: CGFloat(0x00) / 255.0,
                green: CGFloat(0x63) / 255.0,
                blue: CGFloat(0xC6) / 255.0,
                alpha: 1.0
            )
    } else {
            resetPass.isEnabled = false
            resetPass.backgroundColor = UIColor(
                red: CGFloat(0xD1) / 255.0,
                green: CGFloat(0xD1) / 255.0,
                blue: CGFloat(0xD6) / 255.0,
                alpha: 1.0
            )
        }
    }
    
    


}
