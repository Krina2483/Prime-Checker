//
//  ViewController.swift
//  Prime checker
//
//  Created by Krina Bhalodiya on 12/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var lbl: UILabel!
    var prime:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func check_prime(_ sender: Any) {
        var flag:Int = 0
        prime = Int(number.text ?? "0") ?? 0
        
        for i in 2..<prime {
            if prime % i == 0 {
                flag=1
            }
        }
        if flag == 0 {
            lbl.text = "Number is Prime"
        }
        else{
            lbl.text = "Number is Not Prime"
        }
    }
}
