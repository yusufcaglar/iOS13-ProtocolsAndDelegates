//
//  ViewController.swift
//  delegates
//
//  Created by Yusuf ÇAĞLAR on 02/05/2020.
//  Copyright © 2020 Yusuf CAGLAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondToFirstDelegate {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = textField.text
            destinationVC.delegate = self
        }
    }
    
    @IBAction func goToSecond(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecond", sender: self)
        textField.text = ""
    }
    
    func useThisData(data: String) {
        label.text = data
    }
}

