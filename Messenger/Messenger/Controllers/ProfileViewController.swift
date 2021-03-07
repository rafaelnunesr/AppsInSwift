//
//  ProfileViewController.swift
//  Messenger
//
//  Created by Rafael Nunes Rios on 1/27/21.
//

import UIKit
import FirebaseAuth

class ProfileViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func logout(_ sender: Any) {
        do {
            try FirebaseAuth.Auth.auth().signOut()
            
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        } catch  {
            print("Failed to log out")
        }
    }
}
