//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var profession: UILabel!
    @IBOutlet var studyCourse: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImage.layer.cornerRadius = 15
        personImage.image = UIImage(named: user.person.personPhoto)
        name.text = "Имя: " + user.person.name
        surname.text = "Фамилия: " + user.person.surname
        profession.text = "Профессия: " + user.person.profession
        studyCourse.text = "Курс обучения: " + user.person.course
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let petsVC = segue.destination as? PetsViewController else { return }
        
        petsVC.user = user
    }
    
    
}
