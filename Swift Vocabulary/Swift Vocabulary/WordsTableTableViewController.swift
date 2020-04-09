//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Gregory Omoma on 2/17/20.
//  Copyright © 2020 Gregory Omoma. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A variable is a named value that can store information. This can be changed after the fact"), VocabularyWord(word: "Constant", definition: "A constant is a named value that can store information. This cannot be changed after the fact"), VocabularyWord(word: "Function", definition: "A function is a piece of code that perform specofoc tasks")]


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word
        // Configure the cell...

        return cell
    }
    



    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabWord = vocabWords[indexPath.row]
            
            let definitionVC = segue.destination as? DefinitionViewController
            
            definitionVC?.vocabWord = vocabWord
            
        }
        // Pass the selected object to the new view controller.
    }
    

}
