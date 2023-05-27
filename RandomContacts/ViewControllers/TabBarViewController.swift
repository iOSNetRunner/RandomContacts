//
//  TabBarViewController.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 27.05.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var generatedList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let personVC = navigationVC.topViewController as? PersonListViewController {
                    personVC.personList = generatedList
                } else if let contactVC = navigationVC.topViewController as? ContactListViewController {
                    contactVC.contactList = generatedList
                }
            }
        }
    }
}
