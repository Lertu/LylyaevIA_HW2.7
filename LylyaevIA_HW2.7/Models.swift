//
//  Models.swift
//  LylyaevIA_HW2.7
//
//  Created by Garri on 18.02.2021.
//

struct Person {
    let name: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons = [Person]()
        
        let names = DataManager.shared.names.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                lastName: lastNames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
       return persons
    }
    
}


