//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Jason on 4/13/20.
//  Copyright © 2020 Jason Thomas. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UITextView!
    
    var vocabWord: VocabularyWord?
    func updateViews() {
        guard let vocabWord = vocabWord else { return }
        wordLabel.text = vocabWord.word
        definitionLabel.text = vocabWord.definition
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
