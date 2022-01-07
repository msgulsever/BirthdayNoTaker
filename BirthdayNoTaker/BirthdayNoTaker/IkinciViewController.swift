//
//  IkinciViewController.swift
//  BirthdayNoTaker
//
//  Created by user209356 on 1/5/22.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var Ilabel: UILabel!
    
    var isim = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Ilabel.text = isim
    }
    

}
