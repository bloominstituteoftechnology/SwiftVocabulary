//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Tobi Kuyoro on 09/12/2019.
//  Copyright © 2019 Tobi Kuyoro. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [
        VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Any named piece of data in your code that may change when your program runs."),
                           VocabularyWord(word: "Constant", definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword."),
                           VocabularyWord(word: "Downcast", definition: "To attempt to cast an object to one of its subclass types."),
                           VocabularyWord(word: "Data model", definition: "The representation or structure of data within an app."),
                           VocabularyWord(word: "Enumeration", definition: "A data type that defines a group of related values and enables you to work with those values in a type-safe way within your code.")]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        // Configure the cell...
        
        let text = vocabWords[indexPath.row]
        
        cell.textLabel?.text = text.word
        
        return cell
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                
                let word = vocabWords[indexPath.row]
                definitionVC.vocabWord = word
            }
        }
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     
    
}
