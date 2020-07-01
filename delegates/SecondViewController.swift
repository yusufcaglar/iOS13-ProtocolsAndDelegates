//
//  SecondViewController.swift
//  delegates
//
//  Created by Yusuf ÇAĞLAR on 02/05/2020.
//  Copyright © 2020 Yusuf CAGLAR. All rights reserved.
//

import UIKit

protocol SecondToFirstDelegate {
    func useThisData(data: String)
}

class SecondViewController: UIViewController {

    var name : String?
    var delegate : SecondToFirstDelegate?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToFirst(_ sender: UIButton) {
        delegate?.useThisData(data: textField.text!)
        dismiss(animated: true, completion: nil)
        textField.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
