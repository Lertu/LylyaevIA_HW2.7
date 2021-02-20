//
//  ContactListTableViewController.swift
//  LylyaevIA_HW2.7
//
//  Created by Garri on 20.02.2021.
//

import UIKit

class ContactListTableViewController: UITableViewController {

    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailInformVC = segue.destination as? DetailInformViewController else {return}
        if let indexPath = tableView.indexPathForSelectedRow{
            detailInformVC.person = persons[indexPath.row]
        }
    }
    

}
