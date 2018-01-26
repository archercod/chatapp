//
//  AuthVC.swift
//  chatapp
//
//  Created by Marcin Pietrzak on 26/01/2018.
//  Copyright © 2018 Marcin Pietrzak. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
        
    }
    
}
