//
//  FeedViewController.swift
//  Pantrix
//
//  Created by Sumaiya Ahmed on 11/21/20.
//  Copyright © 2020 pantrix. All rights reserved.
//

import UIKit
import Parse

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        let delegate = self.view.window?.windowScene?.delegate as! SceneDelegate
        
        delegate.window?.rootViewController = loginViewController
        
    }
    
    
}
