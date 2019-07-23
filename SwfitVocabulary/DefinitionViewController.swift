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
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
      
    }
    
    func  updateViews() {

       let wordLabel + definitionTextView = vocabWord else { return }
        
        
    
    
    
        weak var wordLabel: UILabel!
    
        weak var definitionTextView: UITextView!
    
   
    // MARK: - Navigation

 /*   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinition" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let vocabWordsDetailVC = segue.destination as? DefinitionViewController
        }
*/
    
    
    }


