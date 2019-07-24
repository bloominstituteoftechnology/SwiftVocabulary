//
//  AddWordViewController.swift
//  SwiftVocabulary
//
//  Created by Jessie Ann Griffin on 7/24/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class AddWordViewController: UIAlertController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "PresentAddWordSegue" {
            
        }
    }

}
