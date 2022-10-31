//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var petsButton: UIButton!
    @IBOutlet var hobbyButton: UIButton!
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var profession: UILabel!
    @IBOutlet var studyCourse: UILabel!
    
    var user = User.getInformation()
    
    private var person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage = UIImageView.init(image: UIImage(named: "person"))
        name.text = person.name
        surname.text = person.surname
        profession.text = person.profession
        studyCourse.text = person.course
        
    }
}
