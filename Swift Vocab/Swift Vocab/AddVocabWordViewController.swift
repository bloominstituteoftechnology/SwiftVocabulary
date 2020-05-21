//
//  AddVocabWordViewController.swift
//  Swift Vocab
//
//  Created by Eugene White on 5/20/20.
//  Copyright © 2020 Eugene White. All rights reserved.
//

import UIKit

class AddVocabWordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "addWord" {
        }
        // Pass the selected object to the new view controller.
    }

}
