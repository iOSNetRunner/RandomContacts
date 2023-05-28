//
//  ContactListViewController.swift
//  RandomContacts
//
//  Created by Dmitrii Galatskii on 26.05.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    var personList: [Person]!
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.person = personList[indexPath.row]
    }
}
// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let contact = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        content.image = UIImage(systemName: "person.fill")
        cell.contentConfiguration = content
        
        return cell
    }
}
