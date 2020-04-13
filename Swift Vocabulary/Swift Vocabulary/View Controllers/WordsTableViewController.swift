//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Violet Lavender Love on 4/13/20.
//  Copyright © 2020 Love. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Array",  definition: "An ordered,                                           random-access collection."),
         VocabularyWord(word: "Dictionary", definition: "A collection whose                               elements are key-value pairs."),
         VocabularyWord(word: "String", definition: "A Unicode string value                                that is a collection of                                         characters.")
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count

    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        

        return cell
    }
  

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowDefinitionSegue" {
            
            let definitionVC = segue.destination as? DefinitionViewController
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let word = vocabWords[indexPath.row]
                
                definitionVC?.word = word
            }
    }
}
}

