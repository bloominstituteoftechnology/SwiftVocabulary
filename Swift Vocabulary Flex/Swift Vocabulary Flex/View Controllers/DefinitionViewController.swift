//
//  DefinitionViewController.swift
//  Swift Vocabulary Flex
//
//  Created by admin on 8/12/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextField: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

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
    
    
    func updateViews() {
        if let vocabWord = vocabWord {
            wordLabel.text = vocabWord.word
            definitionTextField.text = vocabWord.definition
        }
    }

}
