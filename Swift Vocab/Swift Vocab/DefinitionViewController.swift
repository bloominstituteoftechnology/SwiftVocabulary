//
//  DefinitionViewController.swift
//  Swift Vocab
//
//  Created by Eugene White on 5/19/20.
//  Copyright © 2020 Eugene White. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var definitionView: UITextView!
    var vocabWord: VocabularyWord?
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            self.label.text = unwrappedVocabWord.word
            self.definitionView.text =
                unwrappedVocabWord.definition
        }
    }
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

}
