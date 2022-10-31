//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
//    @IBOutlet var petsButton: UIButton!
//    @IBOutlet var hobbyButton: UIButton!
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var profession: UILabel!
    @IBOutlet var studyCourse: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage = UIImageView.init(image: UIImage(named: user.person.personPhoto))
        name.text = user.person.name
        surname.text = user.person.surname
        profession.text = user.person.profession
        studyCourse.text = user.person.course
        
    }
}
