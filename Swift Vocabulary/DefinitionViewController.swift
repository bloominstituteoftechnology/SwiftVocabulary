//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Andrew Ruiz on 7/15/19.
//  Copyright © 2019 Andrew Ruiz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textViewOutlet: UITextView!
    
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
        if let unwrappedVocabWord = vocabWord {
            labelOutlet.text = unwrappedVocabWord.word
            textViewOutlet.text = unwrappedVocabWord.definition
        }
        
        
    }

}
