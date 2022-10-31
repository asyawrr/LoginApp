//
//  UserInformation.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import Foundation

struct User {
    let name: String
    let password: String
    let information: [Information]
}

struct Information {
    let title: String
    let type: Info
}

enum Info: String {
    case hobby = "Hobby"
    case pets = "Pets"
    case facts = "Funny Facts"
    
    var definition; String{
        switch self{
        case .hobby:
            "1"
        case .pets:
            "2"
        case .facts:
            "3"
        }
        
    }
}


