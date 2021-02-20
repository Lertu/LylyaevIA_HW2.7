//
//  PersonListTabBarViewController.swift
//  LylyaevIA_HW2.7
//
//  Created by Garri on 18.02.2021.
//

import UIKit

class PersonListTabBarViewController: UITabBarController {

    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let viewcontrollers = self.viewControllers else {return}
        for viewcontroller in viewcontrollers{
            if let contactListVC = viewcontroller as? ContactListTableViewController {
                
                contactListVC.persons = persons
            } else { guard let detailContactVC = viewcontroller as? DetailContactTableViewController else {return}
                
                detailContactVC.persons = persons
            }
        }
    }
    

}
