//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Bronson Mullens on 4/8/20.
//  Copyright © 2020 Bronson Mullens. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Integer", definition: "A whole number."),
        VocabularyWord(word: "String", definition: "A collection of characters."),
        VocabularyWord(word: "Boolean", definition: "A value which is either true or false."),
        VocabularyWord(word: "Double", definition: "A number with a decimal value.")
    ]
    
     override func viewDidLoad() {
     super.viewDidLoad()
     
     }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabularyWord", for: indexPath)
        
        // Configure the cell...
        let currentWord = vocabWords[indexPath.row]
        cell.textLabel?.text = currentWord.word
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController, let indexPath = self.tableView.indexPathForSelectedRow {
                let currentWord = vocabWords[indexPath.row]
                definitionVC.vocabWord = currentWord
            }
        }
    }
}
