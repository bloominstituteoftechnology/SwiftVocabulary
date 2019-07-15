//
//  DefinitionViewController.swift
//  Swift VOCAB
//
//  Created by Alex Shillingford on 7/15/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord? {
        didSet {
            updateViews()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
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
