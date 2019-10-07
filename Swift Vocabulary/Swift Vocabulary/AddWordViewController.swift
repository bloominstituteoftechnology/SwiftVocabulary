//
//  AddWordViewController.swift
//  Swift Vocabulary
//
//  Created by Jon Bash on 2019-10-07.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class AddWordViewController: UIViewController {
    
    var word: String = ""
    var definition: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func wordTextChanged(_ sender: UITextField) {
        word = sender.text ?? ""
    }
    
    @IBAction func definitionTextChanged(_ sender: UITextField) {
        definition = sender.text ?? ""
    }
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
