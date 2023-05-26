//
//  Person.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 25.05.2023.
//

struct Person {
    let name: String!
    let lastname: String!
    let phoneNumber: String!
    let email: String!
    
    static func getContactList() -> [Person] {
        var names = DataStore.shared.names
        var lastnames = DataStore.shared.lastnames
        var phoneNumbers = DataStore.shared.phoneNumbers
        var emails = DataStore.shared.emails
        
        var contacts: [Person] = []
        
        for _ in 1...names.count {
            let randomName = names.indices.randomElement() ?? 0
            let uniqueName = names.remove(at: randomName)
            
            let randomLastname = lastnames.indices.randomElement() ?? 0
            let uniqueLastname = lastnames.remove(at: randomLastname)
            
            let randomPhoneNumber = phoneNumbers.indices.randomElement() ?? 0
            let uniquePhoneNumber = phoneNumbers.remove(at: randomPhoneNumber)
            
            let randomEmail = emails.indices.randomElement() ?? 0
            let uniqueEmail = emails.remove(at: randomEmail)
            
            contacts.append(
                Person(name: uniqueName,
                       lastname: uniqueLastname,
                       phoneNumber: uniquePhoneNumber,
                       email: uniqueEmail)
            )
        }
        return contacts
    }
}
