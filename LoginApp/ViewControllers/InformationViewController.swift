//
//  NavigationViewController.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var personImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var studyCourseLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personImageView.layer.cornerRadius = 15
        
        personImageView.image = UIImage(named: user.person.personPhoto)
        nameLabel.text = "Имя: " + user.person.name
        surnameLabel.text = "Фамилия: " + user.person.surname
        professionLabel.text = "Профессия: " + user.person.profession
        studyCourseLabel.text = "Курс обучения: " + user.person.course
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openPetsVC" {
            guard let petsVC = segue.destination as? PetsViewController else { return }
            petsVC.user = user

        }
        
        if segue.identifier == "openHobbyVC" {
            guard let hobbyVC = segue.destination as? HobbyViewController else { return }
            hobbyVC.user = user

        }
    }
//    
//    @IBAction func petsButtonPressed() {
//        performSegue(withIdentifier: "openPetsVC", sender: nil)
//    }
//
//    @IBAction func hobbyButtonPressed() {
//        performSegue(withIdentifier: "openHobbyVC", sender: nil)
//    }
    
    
}
