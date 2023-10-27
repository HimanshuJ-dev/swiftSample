//
//  ViewController2.swift
//  NareshCA3Pro
//
//  Created by Student on 07/11/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

var name1 = String()
var age1 = String()
var phone1 = String()
var address1 = String()
var idname1 = String()
var idno1 = String()
var cityname1 = String()
var hotelname1 = String()
var noofrooms1 = String()
var noofpersons1 = String()
var totalbill1 = String()

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name2.text = name1
        no2.text = phone1
        age2.text = age1
        idno2.text = idno1
        idname2.text = idname1
        hotelname2.text = hotelname1
        cityname2.text = cityname1
        noofrooms2.text = noofrooms1
        finalbill2.text = totalbill1

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
    
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var no2: UILabel!
    
    @IBOutlet weak var age2: UILabel!
    @IBOutlet weak var idname2: UILabel!
    @IBOutlet weak var cityname2: UILabel!
    
    @IBOutlet weak var finalbill2: UILabel!
    
    @IBOutlet weak var idno2: UILabel!
    @IBOutlet weak var hotelname2: UILabel!
    @IBOutlet weak var noofrooms2: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    
    

}
