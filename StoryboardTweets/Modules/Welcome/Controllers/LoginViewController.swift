//
//  LoginViewController.swift
//  StoryboardTweets
//
//  Created by Alejandro Reyna on 8/03/23.
//

import UIKit
import NotificationBannerSwift

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var emailTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var loginButton : UIButton!
    
    // MARK: - Actions
    @IBAction func loginButtonAction(_ sender: Any) {
        performLoading()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Private Methods
    private func performLoading() {
        guard let email = self.emailTextField.text, !email.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "You must specify an email", style: .warning).show()
            return
        }
        
        guard let password = self.passwordTextField.text, !password.isEmpty else {
            NotificationBanner(title: "Error", subtitle: "You must specify a password", style: .warning).show()
            return
        }
        
        if !email.isEmpty, !password.isEmpty {
            NotificationBanner(title: "Success", subtitle: "You will be redirected", style: .success).show()
            return
        }
    }
}
