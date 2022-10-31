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
    
    private let hobby = Hobby.getHobby()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyImage = UIImageView.init(image: UIImage(named: "hobby"))
        hobbyText = hobby.hobbyText
        
    }

}
