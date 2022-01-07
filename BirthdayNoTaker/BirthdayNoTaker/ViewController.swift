//
//  ViewController.swift
//  BirthdayNoTaker
//
//  Created by user209356 on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    var deneme = 0
    var deneme2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "DG")
        
        if let newName = storedName as? String {
            nameLabel.text = "name: \(newName)"
        
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }

    
    @IBAction func goster(_ sender: Any) {
        
        userName = nameTextField.text!

        performSegue(withIdentifier: "Ikincisayfa", sender: nil)
                
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Ikincisayfa" {
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.isim = userName
        }
    }
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "DG")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birtday:  \(birthdayTextField.text!)"
        
        
        	
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "DG")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "DG")
            birthdayLabel.text = "Birthday: "
            
        }
        
    }
    
    
}


