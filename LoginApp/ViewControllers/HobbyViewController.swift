//
//  HobbyViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet var hobbyImage: UIImageView!
    @IBOutlet var hobbyText: String!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyImage.layer.cornerRadius = 10
        hobbyImage.image = UIImage(named: user.person.personHobby.photo)
        hobbyText = user.person.personHobby.hobbyText
        
    }

}
