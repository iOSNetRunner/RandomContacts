//
//  PersonDetailsViewController.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 26.05.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}
