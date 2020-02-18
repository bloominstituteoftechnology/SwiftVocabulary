//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gregory Omoma on 2/17/20.
//  Copyright © 2020 Gregory Omoma. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var vocabWord: VocabularyWord?
    
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
        // Do any additional setup after loading the view.
    func updateViews () {
        if let vocabWord = vocabWord {
        definitionText.text = vocabWord.definition
            wordLabel.text = vocabWord.word
        } else { return }
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
