//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Ian French on 4/8/20.
//  Copyright © 2020 Ian French. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

   
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable" , definition: "A named value used to store information. Variables can be changed after being created."),
        VocabularyWord(word: "Constant" , definition: "A named value used to store information. Constants cannot be mutated after being created."),
        VocabularyWord(word: "Function" , definition: "Self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")
        
        
    
    ]
    
    

    
    
    // How many rows?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        return vocabWords.count
    }

    // Row contents
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
           let defined = vocabWords[indexPath.row]
           cell.textLabel?.text = defined.word
         
        
        return cell
    }
    
   
    
    // MARK: - Navigation

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "ShowDefinitionSegue" {
        
            guard let definitionVC = segue.destination as? DefinitionViewController else {
                return}
          
    
              guard let indexPath = tableView.indexPathForSelectedRow else {
                return}
        
        let theWord = vocabWords[indexPath.row]
        definitionVC.vocabWord = theWord
        }
       
    }

}
