//
//  ViewController.swift
//  NareshCA3Pro
//
//  Created by Student on 07/11/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginbtn(_ sender: Any) {
        let a = username.text!
        let b = password.text!
        if(a == "Naresh" && b == "1234567"){
            performSegue(withIdentifier: "loginsuccess", sender: self)
        }else{
            let alert = UIAlertController(title: "Error", message: "Wrong username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert,animated: true, completion: nil)
        }
    }
}

