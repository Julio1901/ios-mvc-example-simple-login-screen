//
//  HomeViewController.swift
//  MVCSimpleStudyExample
//
//  Created by Julio Cesar Pereira on 19/04/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = NetworkService.shared.getLoggedInUser()
        welcomeUser()
    }
    
    private func welcomeUser(){
        titleLabel.text = "Hello, \(user.firstName) \(user.lastName)"
    }
    

}
