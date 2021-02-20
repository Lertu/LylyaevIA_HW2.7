//
//  DetailContactTableViewController.swift
//  LylyaevIA_HW2.7
//
//  Created by Garri on 20.02.2021.
//

import UIKit

class DetailContactTableViewController: UITableViewController {
    
    var persons = [Person]()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Detail", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = person.email
            content.image = UIImage (systemName: "mail" )
        } else {
            content.text = person.phone
            content.image = UIImage (systemName: "phone" )
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        title = persons[section].fullName
        return title
    }
    
}
