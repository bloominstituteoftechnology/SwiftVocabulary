//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Craig Belinfante on 5/20/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionTextView: UITextView!
    @IBOutlet weak var wordLabel: UILabel!
    
    var vocabularyWord: Vocab?
    
    func updateViews() {
        if let unwrappedVocabWord = vocabularyWord {
            definitionTextView.text = unwrappedVocabWord.definition
            wordLabel.text = unwrappedVocabWord.word
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
