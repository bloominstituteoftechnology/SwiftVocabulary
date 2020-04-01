//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Cameron Collins on 3/16/20.
//  Copyright © 2020 Cameron Collins. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    //Objects
    @IBOutlet weak var DefinitionLabel: UILabel!
    
    @IBOutlet weak var DefinitionLabel2: UILabel!
    
    //Variable Initialization
    var word: VocabularyWord?
    
    func updateViews() {
        if let tempWord = word {
            DefinitionLabel.text = tempWord.word + ": "
            DefinitionLabel2.text = tempWord.definition
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
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
