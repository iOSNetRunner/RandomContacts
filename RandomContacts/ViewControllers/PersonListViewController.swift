//
//  ContactListViewController.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 26.05.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    private let contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
     
}
    // MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name ?? "") \(contact.lastname ?? "")"
        cell.contentConfiguration = content
        return cell
    }
}
