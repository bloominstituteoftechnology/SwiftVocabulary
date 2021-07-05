//
//  DefinitionViewController.swift
//  SwfitVocabulary
//
//  Created by Donella Barcelo on 7/15/19.
//  Copyright © 2019 Donella Barcelo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
      
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else {return}
        definitionTextView.text = vocabWord.definition
        wordLabel.text = vocabWord.word
        
    }
    
    
   
    // MARK: - Navigation

 /*   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let vocabWordsDetailVC = segue.destination as? DefinitionViewController
        }
*/
    
    
    }


