//
//  RegisterViewController.swift
//  StoryboardTweets
//
//  Created by Alejandro Reyna on 8/03/23.
//

import UIKit
import NotificationBannerSwift

class RegisterViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var emailTextField : UITextField!
    @IBOutlet weak var namesTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var registerButton : UIButton!
    
    // MARK: - Actions
    @IBAction func registerButtonAction() {
        view.endEditing(true)
        self.performRegister()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private Methods
    private func performRegister() {
        guard let email = self.emailTextField.text, !email.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "You must specify an email", style: .warning).show()
            return
        }
        
        guard let names = self.namesTextField.text, !names.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "You must specify a name", style: .warning).show()
            return
        }
        
        guard let password = self.passwordTextField.text, !password.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "You must specify a password", style: .warning).show()
            return
        }
        
        if !email.isEmpty, !names.isEmpty, !password.isEmpty {
            NotificationBanner(title: "Success", subtitle: "You will be redirected", style: .success).show()
            return
        }
    }

}
