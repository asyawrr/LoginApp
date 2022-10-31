//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 29.10.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var usernameTF: UITextField!
     
    private let user = "User"
    private let password = "Password"
    
    // MARK: override functions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.usernameValue = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: IB Actions
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0 ?
        showAlert(with: "Ooops!", and: "Your password is \(password)") :
        showAlert(with: "Ooops!", and: "Your name is \(user)")
    }
    
    
    @IBAction func logInButtonPressed() {
        guard usernameTF.text == user, passwordTF.text == password else {
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login or password",
                      for: passwordTF)
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        usernameTF.text = ""
        passwordTF.text = ""
    }
}


// MARK: extensions
extension LoginViewController {
    private func showAlert(with title: String, and massage: String, for textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
