//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 01.11.2022.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet var hobbyImageView: UIImageView!
    @IBOutlet var hobbyTextLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyImageView.layer.cornerRadius = 10
        
        hobbyImageView.image = UIImage(named: user.person.hobby.photo)
        hobbyTextLabel.text = user.person.hobby.text
        
    }
    

}
