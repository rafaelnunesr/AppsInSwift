//
//  ConversationsViewController.swift
//  Messenger
//
//  Created by Rafael Nunes Rios on 1/27/21.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // just to make sure we're in the ConversationsViewController
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // check if user is logged in UserDefaults
        // the key "logged_in" could be named any thing we want
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            
            // create a navigation controller
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }


}

