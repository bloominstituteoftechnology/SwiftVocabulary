//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Brian Rouse on 4/13/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
   
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A mutable identifier"),
                                        VocabularyWord(word: "Constant", definition: "An immutable identifier"),
                                        VocabularyWord(word: "Function", definition: "A method in programming")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let cellWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = cellWord.word

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let definedWord = vocabWords[indexPath.row]
            guard let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            definitionVC.vocabularyWord = definedWord
            
        }
    }
}
