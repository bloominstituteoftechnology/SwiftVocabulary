//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by James Sedlacek on 5/19/20.
//  Copyright © 2020 James Sedlacek. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var lblDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let word = vocabWord {
            //If it is not nil, use its word and definition properties to populate the label and text view.
            lblDefinition.text = word.definition
        }
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
