//
//  UserInformation.swift
//  LoginApp
//
//  Created by Asya Sher on 31.10.2022.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getInformation() -> User {
        User(
            userName: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
    
}

struct Person {
    let name: String
    let surname: String
    let profession: String
    let course: String
    let personPhoto: String
    let personPets: Pets
    
    static func getPerson() -> Person {
        Person(
            name: "Ася",
            surname: "Шерстнюк",
            profession: "junior iOS разработчик",
            course: "2 блок swiftbook",
            personPhoto: "person",
            personPets: Pets.getPets()
        )
    }
}

struct Pets {
    let photoTop: String
    let photoBottom: String
    let petsInfo: String
    
    static func getPets() -> Pets {
        Pets(
            photoTop: "blackCat",
            photoBottom: "redCat",
            petsInfo: "У меня есть котики, и они клевые!"
        )
    }
    
}





