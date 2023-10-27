//
//  ViewController1.swift
//  NareshCA3Pro
//
//  Created by Student on 07/11/22.
//  Copyright © 2022 student. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

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
    
    @IBOutlet weak var hotelimages: UIImageView!
    @IBOutlet weak var custname: UITextField!
    @IBOutlet weak var custage: UITextField!
    @IBOutlet weak var custno: UITextField!
    @IBOutlet weak var custadd: UITextField!
    @IBOutlet weak var custidselected: UILabel!
    @IBOutlet weak var custidno: UITextField!
    
    @IBOutlet weak var custcityselected: UILabel!
    @IBOutlet weak var selectedhotelimages: UIImageView!
    
    @IBOutlet weak var selectedhotelname: UILabel!
    @IBOutlet weak var noofptext: UILabel!
    @IBOutlet weak var totalbill: UITextField!
    
    var city = String()
    var hotelname = String()
    var hotelprice = Double()
    
    @IBAction func idseletor(_ sender: Any) {
        let aadharselectorhandler = {
            (action: UIAlertAction)-> Void in
            self.custidselected.text = String("Aadhar Card")
            
        }
        let panselectorhandler = {
            (action: UIAlertAction)-> Void in
            self.custidselected.text = String("PAN Card")
        }
        let dlselectorhandler = {
            (action: UIAlertAction)-> Void in
            self.custidselected.text = String("Driving License")
        }
        let proofselector = UIAlertController(title: "ID Proof", message: "Select ID Proof", preferredStyle: .actionSheet)
        proofselector.addAction(UIAlertAction(title: "Aadhar Card", style: .default, handler: aadharselectorhandler))
        proofselector.addAction(UIAlertAction(title: "PAN Card", style: .default, handler: panselectorhandler))
        proofselector.addAction(UIAlertAction(title: "Driving License", style: .default, handler: dlselectorhandler))
        proofselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(proofselector, animated: true, completion: nil)
    }
    
    @IBAction func cityselectorbtn(_ sender: Any) {
        let chandigarhhandler = {
            (action: UIAlertAction)-> Void in
            self.custcityselected.text = "Chandigarh"
            self.city = "Chandigarh"
        }
        let Phagwarahandler = {
            (action: UIAlertAction)-> Void in
            self.custcityselected.text = "Phagwara"
            self.city = "Phagwara"
        }
        let Amritsarhandler = {
            (action: UIAlertAction)-> Void in
            self.custcityselected.text = "Amritsar"
            self.city = "Amritsar"
        }
        let Jalandharhandler = {
            (action: UIAlertAction)-> Void in
            self.custcityselected.text = "Jalandhar"
            self.city = "Jalandhar"
        }
        let cityselector = UIAlertController(title: "Cities", message: "Select city for hotels", preferredStyle: .actionSheet)
        cityselector.addAction(UIAlertAction(title: "Phagwara", style: .default, handler: Phagwarahandler))
        cityselector.addAction(UIAlertAction(title: "Chandigarh", style: .default, handler: chandigarhhandler))
        cityselector.addAction(UIAlertAction(title: "Amritsar", style: .default, handler: Amritsarhandler))
        cityselector.addAction(UIAlertAction(title: "Jalandhar", style: .default, handler: Jalandharhandler))
        cityselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(cityselector, animated: true, completion: nil)
    }
    
    @IBAction func hotelselectorbtn(_ sender: Any) {
        let a = city
        if(a == "Phagwara"){
            let hirhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Hotel Indian Residency"
                self.hotelname = "Hotel Indian Residency"
                self.hotelprice = 1500
            }
            let vrhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Victoria Residency"
                self.hotelname = "Victoria Residency"
                self.hotelprice = 1700
            }
            let gmghhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "GMG Hotel"
                self.hotelname = "GMG Hotel"
                self.hotelprice = 1200
            }
            let aihandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Awadesh Inn"
                self.hotelname = "Awadesh Inn"
                self.hotelprice = 1350
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "Hotel Indian Residency", style: .default, handler: hirhandler))
            hotelselector.addAction(UIAlertAction(title: "Victoria Residency", style: .default, handler: vrhandler))
            hotelselector.addAction(UIAlertAction(title: "GMG Hotel", style: .default, handler: gmghhandler))
            hotelselector.addAction(UIAlertAction(title: "Awadesh Inn", style: .default, handler: aihandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
            
        }else if(a == "Chandigarh"){
            let rukshandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Royal UK Stays"
                self.hotelname = "Royal UK Stays"
                self.hotelprice = 1800
            }
            let ghhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Green House"
                self.hotelname = "Green House"
                self.hotelprice = 1100
            }
            let cghhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Chawla Guest House"
                self.hotelname = "Chawla Guest House"
                self.hotelprice = 2000
            }
            let sghhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Surya Guest House"
                self.hotelname = "Surya Guest House"
                self.hotelprice = 1550
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "Royal UK Stays", style: .default, handler: rukshandler))
            hotelselector.addAction(UIAlertAction(title: "Green House", style: .default, handler: ghhandler))
            hotelselector.addAction(UIAlertAction(title: "Chawla Guest House", style: .default, handler: cghhandler))
            hotelselector.addAction(UIAlertAction(title: "Surya Guest House", style: .default, handler: sghhandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
        }else if(a == "Amritsar"){
            let htvhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Hotel Temple View"
                self.hotelname = "Hotel Temple View"
                self.hotelprice = 1300
            }
            let hshandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Hotel Sallow"
                self.hotelname = "Hotel Sallow"
                self.hotelprice = 1900
            }
            let qlhhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Queen Land Hotel"
                self.hotelname = "Queen Land Hotel"
                self.hotelprice = 1750
            }
            let svrhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Shree Vishnu Residency"
                self.hotelname = "Shree Vishnu Residency"
                self.hotelprice = 1650
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "Hotel Temple View", style: .default, handler: htvhandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel Sallow", style: .default, handler: hshandler))
            hotelselector.addAction(UIAlertAction(title: "Queen Land Hotel", style: .default, handler: qlhhandler))
            hotelselector.addAction(UIAlertAction(title: "Shree Vishnu Residency", style: .default, handler: svrhandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
        }else if(a == "Jalandhar"){
            let tdihandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "The Days Inn"
                self.hotelname = "The Days Inn"
                self.hotelprice = 1500
            }
            let hwwhandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Hotel White Western"
                self.hotelname = "Hotel White Western"
                self.hotelprice = 1250
            }
            let hghandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Hotel Golden"
                self.hotelname = "Hotel Golden"
                self.hotelprice = 1400
            }
            let hgthandler = {
                (action: UIAlertAction)-> Void in
                self.selectedhotelname.text = "Hotel Grand Tulip"
                self.hotelname = "Hotel Grand Tulip"
                self.hotelprice = 1750
            }
            let hotelselector = UIAlertController(title: "Hotels", message: "Select hotel or booking", preferredStyle: .actionSheet)
            hotelselector.addAction(UIAlertAction(title: "The Days Inn", style: .default, handler: tdihandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel White Western", style: .default, handler: hwwhandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel Golden", style: .default, handler: hghandler))
            hotelselector.addAction(UIAlertAction(title: "Hotel Grand Tulip", style: .default, handler: hgthandler))
            hotelselector.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(hotelselector, animated: true)
            
        }
    }
    
    var noofrooms = Int()
    var roomprice = Double()
    
    
    @IBAction func noofroomsselector(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            self.noofrooms = 1
            self.roomprice = self.hotelprice
        }else if(sender.selectedSegmentIndex == 1){
            self.noofrooms = 2
            self.roomprice = self.hotelprice * 1.9
        }else if(sender.selectedSegmentIndex == 2){
            self.noofrooms = 3
            self.roomprice = self.hotelprice * 2.7
        }else if(sender.selectedSegmentIndex == 3){
            self.noofrooms = 4
            self.roomprice = self.hotelprice * 3.5
        }
    }
    
    
    @IBAction func noofopersonselector(_ sender: UISlider) {
        let h = Int(sender.value)
        noofptext.text = String("\(h)")
    }
    
    @IBAction func calcbill(_ sender: Any) {
        self.roomprice = self.roomprice + (self.roomprice * 0.12)
        let s = Int(self.roomprice)
        
        totalbill.text = String("Rs. \(s).00")
    }
    
    @IBAction func confrimbookingbtn(_ sender: Any) {
        name1 = custname.text!
        phone1 = custno.text!
        age1 = custage.text!
        address1 = custadd.text!
        idname1 = custidselected.text!
        idno1 = custidno.text!
        cityname1 = custcityselected.text!
        hotelname1 = hotelname
        noofrooms1 = String(noofrooms)
        noofpersons1 = noofptext.text!
        totalbill1 = totalbill.text!
        performSegue(withIdentifier: "orderconfirm", sender: self)
    }
    
    
    

}
