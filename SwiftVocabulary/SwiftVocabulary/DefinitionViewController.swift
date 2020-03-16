//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn James on 3/16/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    // MARK: - Properties
    var vocabWord: VocabularyWord?
    
    // MARK: - Outlets
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
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

}
