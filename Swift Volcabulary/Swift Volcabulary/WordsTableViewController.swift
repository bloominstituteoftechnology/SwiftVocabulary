//
//  WordsTableViewController.swift
//  Swift Volcabulary
//
//  Created by Nichole Davidson on 2/17/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
         VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants cannot be changed after being created."),
         VocabularyWord(word: "Function", definition: "A self-contained chunk o fcode that performs a specific task.")]

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        print(indexPath.row)
        
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            if let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController {
                          
                let vocabWord = vocabWords[indexPath.row]
                definitionVC.vocabWord = vocabWord
            }
        }
    }
}
