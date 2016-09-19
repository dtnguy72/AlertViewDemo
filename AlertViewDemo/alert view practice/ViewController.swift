//
//  ViewController.swift
//  alert view practice
//
//  Created by Danny Nguyen on 9/6/16.
//  Copyright © 2016 Danny Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showSimpleAlert(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Opps",
                                                message: "Unable to reach the server. Check network connectivity or try again later.",
                                                preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { action in
            print("OK was selected!")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true) {
            print("Show the Simple Alert!")
        }
    }
 
    @IBAction func showAlertWithBtn(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Lets be Friendz",
                                                message: "Do you want to be my friend?",
                                                preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Nah", style: .cancel) { action in
            print("Cancel was selected!")
        }
        
        alertController.addAction(cancelAction)
        
        let discardAction = UIAlertAction(title: "Yup yup", style: .default) { action in
            print("Discard was selected!")
        }
        
        alertController.addAction(discardAction)
        
        self.present(alertController, animated: true) {
            print("Show the Alert with Buttons!")
        }

    }
    
    @IBAction func showAlertWithTextField(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Account Login",
                                                message: "Please enter your login credentials.",
                                                preferredStyle: .alert)
        
        alertController.addTextField { textField -> Void in
            
            textField.textColor = UIColor.blue
            textField.placeholder = "User Name"
        }
        
        alertController.addTextField { textField -> Void in
            
            textField.textColor = UIColor.blue
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel was selected!")
        }
        
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Login", style: .default) { action in
            print("Login was selected!")
            
            let userName = alertController.textFields![0].text!
            let password = alertController.textFields![1].text!
            
            print("User Name entered \(userName)")
            print("Password entered \(password)")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true) {
            print("Show the Alert With Text Fields & Buttons")
        }

    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: nil,
                                                message: "You have changed this image. What would you like to do with it?",
                                                preferredStyle: .actionSheet)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { action in
            print("Save was selected!")
        }
        
        alertController.addAction(saveAction)
        
        let discardAction = UIAlertAction(title: "Discard", style: .destructive) { action in
            print("Discard was selected!")
        }
        
        alertController.addAction(discardAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel was selected!")
        }
        
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true) {
            print("Show the Action Sheet!")
        }
    }
    
    
}

