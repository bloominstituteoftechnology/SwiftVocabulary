//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Malik Barnes on 12/9/19.
//  Copyright © 2019 Malik Barnes. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var words: [VocabularyWord] = [VocabularyWord(name: "Malik", definition: "King"),
                                   VocabularyWord(name: "Melodia", definition: "Queen")]

   
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return words.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
         print(indexPath.row)
        
        let word = words[indexPath.row]
        
        cell.textLabel?.text = word.name

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "ShowDefinition" {
        
        if let indexPath = tableView.indexPathForSelectedRow,
                        let definitionVC = segue.destination as? DefinitionViewController {
                        let word = words[indexPath.row]
                        definitionVC.cellWord = word
         }
      }
   }
}
