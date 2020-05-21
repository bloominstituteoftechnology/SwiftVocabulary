//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Sam Gutierrez on 5/20/20.
//  Copyright © 2020 Sam Gutierrez.inc. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [
        
    VocabularyWord(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate."),
    VocabularyWord(word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution."),
    VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task.")
    
    ]

    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let definitionVC = segue.destination as? DefinitionViewController
                
                definitionVC?.vocabWord = vocabWords[indexPath.row].self
            }
            
        }
        // Pass the selected object to the new view controller.
    }
}
