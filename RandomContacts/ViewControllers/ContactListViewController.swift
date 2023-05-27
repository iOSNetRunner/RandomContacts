//
//  ContactListViewController.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 26.05.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {

    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)

        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(contact.name) \(contact.lastname)"
        cell.contentConfiguration = content

        return cell
    }
}
