//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 29.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var welcomeLabel: UILabel!
        
    var usernameValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientBackground()
        
        welcomeLabel.text = "Welcome, \(usernameValue ?? "0")"
        
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
    
    // MARK: private functions
    
    private func gradientBackground() {
        let colorTop = UIColor(red: 100/255, green: 210/255, blue: 255/255, alpha: 0.5).cgColor
        let colorBottom = UIColor(red: 94/255, green: 92/255, blue: 230/255, alpha: 0.5).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    
}
