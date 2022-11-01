//
//  PetsViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class PetsViewController: UIViewController {
    
    @IBOutlet var topPhotoImageView: UIImageView!
    @IBOutlet var bottomPhotoImageView: UIImageView!
    @IBOutlet var petsTextLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topPhotoImageView.layer.cornerRadius = 10
        bottomPhotoImageView.layer.cornerRadius = 10

        topPhotoImageView.image = UIImage(named: user.person.pets.photoTop)
        bottomPhotoImageView.image = UIImage(named: user.person.pets.photoBottom)

        petsTextLabel.text = user.person.pets.info
        
    }

}
