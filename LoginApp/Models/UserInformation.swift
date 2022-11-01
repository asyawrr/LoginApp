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
    let person: Person
    
    static func getInformation() -> User {
        User(
            name: "User",
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
    let photo: String
    let pets: Pets
    let hobby: Hobby
    
    static func getPerson() -> Person {
        Person(
            name: "Ася",
            surname: "Шерстнюк",
            profession: "junior iOS разработчик",
            course: "2 блок swiftbook",
            photo: "person",
            pets: Pets.getPets(),
            hobby: Hobby.getHobby()
        )
    }
}

struct Pets {
    let photoTop: String
    let photoBottom: String
    let info: String
    
    static func getPets() -> Pets {
        Pets(
            photoTop: "blackCat",
            photoBottom: "redCat",
            info: "У меня есть котики, и они клевые!"
        )
    }
}

struct Hobby {
    let photo: String
    let text: String
    
    static func getHobby() -> Hobby {
        Hobby(
            photo: "hobby",
            text: "Играем вот с друзьями в свободное от работы время в настолки.\n Самое сложное: найти чтобы это свободное время совпало у всех :)"
        )
    }
}





