//
//  UnwindViewController.swift
//  UnWindSegueDEmo
//
//  Created by User on 22/05/19.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class UnwindViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!
    
    var dataPass : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let data = textField.text {
            
            dataPass = data
        }
    }

    

}
