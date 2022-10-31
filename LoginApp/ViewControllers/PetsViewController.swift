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
    
    private let pets = Pets.getPets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topPhoto.image = UIImage(named: pets.photoTop)
        bottomPhoto.image = UIImage(named: pets.photoBottom)
        petsText = pets.petsInfo
        
    }

}
