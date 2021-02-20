//
//  DetailInformViewController.swift
//  LylyaevIA_HW2.7
//
//  Created by Garri on 20.02.2021.
//

import UIKit

class DetailInformViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneLabel.text = "Phone number: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        
    }

}
