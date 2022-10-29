//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 29.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var usernameTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.usernameValue = usernameTF.text
        }
    }

    // MARK: IB Actions
    @IBAction func forgotPassButtonPressed() {
        showAlertHelp(with: "Ooops!", and: "Your password is \"Password\"")
    }
    @IBAction func forgotNameButtonPressed() {
        showAlertHelp(with: "Ooops!", and: "Your name is \"User\"")
    }
    
    @IBAction func logInButtonPressed() {
        guard let inputName = usernameTF.text, inputName == "User" else {
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login or password",
                      for: passwordTF)
            return
        }
        guard let inputPassword = passwordTF.text, inputPassword == "Password" else {
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login or password",
                      for: passwordTF)
            return
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        usernameTF.text = ""
        passwordTF.text = ""
    }
}


// MARK: extensions
extension LoginViewController {
    private func showAlert(with title: String, and massage: String, for textField: UITextField) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func showAlertHelp(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
