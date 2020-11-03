//
//  Person.swift
//  Contacts
//
//  Created by Vladimir Stepanchikov on 03.11.2020.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let mail: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let mails = DataManager.shared.mails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                mail: mails[index],
                phone: phones[index])
            
            persons.append(person)
        }
        return persons
    }
    
}

enum SystemImages: String {
    case phone = "phone"
    case mail = "tray"
    case avatar = "person.fill"
    case contacts = "person.3"
}
