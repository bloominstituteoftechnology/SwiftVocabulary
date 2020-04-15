//
//  WordsTableViewController.swift
//  SwiftVocabulary2.0
//
//  Created by Nonye on 4/13/20.
//  Copyright © 2020 Nonye Ezekwo. All rights reserved.
//

import UIKit
    //MARK: TABLE VIEW VOCABULARY
class WordsTableViewController: UITableViewController {
    var vocabWords: [VocabularyWord] = [VocabularyWord(name: "Constant", definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword."), VocabularyWord(name: "Variable", definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword."), VocabularyWord(name: "Class", definition: "A piece of code that describes the behavior and properties common to any particular type of object, essentially providing a blueprint for the object."), VocabularyWord(name: "Struct", definition: "A data type that’s similar to a class, but doesn’t support inheritance and is passed by value instead of by reference.")]


    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let words = vocabWords[indexPath.row]
              
        cell.textLabel?.text = words.name
        
        return cell
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
    
            
            if let selectedIndexPath = tableView.indexPathForSelectedRow,
                let defVC = segue.destination as? DefinitionViewController {
                let word = vocabWords[selectedIndexPath.row]
                defVC.vocabWord = word
            }
            
            
            /*guard let definitionVC = segue.destination as? DefinitionViewController else { return }*/
            
        }
        
    }
    
}
