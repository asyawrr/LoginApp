//
//  PetsViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class PetsViewController: UIViewController {
    
    @IBOutlet var topPhoto: UIImageView!
    @IBOutlet var bottomPhoto: UIImageView!
    @IBOutlet var petsText: String!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topPhoto.image = UIImage(named: user.person.personPets.photoTop)
        bottomPhoto.image = UIImage(named: user.person.personPets.photoBottom)
        petsText = user.person.personPets.petsInfo
        
    }

}
