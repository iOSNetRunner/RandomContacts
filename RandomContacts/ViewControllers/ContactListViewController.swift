//
//  ContactListViewController.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var contactList: [Person]!
    
    // MARK: - TableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contactList[section]
        let title = contact.fullName
        
        return title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            let contact = contactList[indexPath.section]
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone.fill")
            content.text = contact.phoneNumber
            cell.contentConfiguration = content
            
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            let contact = contactList[indexPath.section]
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "envelope.fill")
            content.text = contact.email
            content.textProperties.minimumScaleFactor = 0.5
            cell.contentConfiguration = content
            
            return cell
        }
    }
}
