//
//  MainController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class MainAttendanceController: UIViewController {

    //IBOutlet
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    //IBAction
    @IBAction func skipAction(_ sender: UIBarButtonItem) {
        let performLogin = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginController") as! LoginController
        
        self.navigationController?.pushViewController(performLogin, animated: true)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        let performLogin = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "LoginController") as! LoginController
        
        self.navigationController?.pushViewController(performLogin, animated: true)
        performLogin.navigationItem.hidesBackButton = true
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        let performSignUp = UIStoryboard(name: "SignUp", bundle: nil).instantiateViewController(withIdentifier: "SignUpController") as! SignUpController
        
        self.navigationController?.pushViewController(performSignUp, animated: true)
        performSignUp.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }


}
