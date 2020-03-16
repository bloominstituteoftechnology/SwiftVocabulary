//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Nihal Erdal on 3/16/20.
//  Copyright © 2020 Nihal Erdal. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords : [VocabularyWord] = [VocabularyWord(name: "variable", definition: ""),
                                         VocabularyWord(name: "constant", definition: ""),
                                         VocabularyWord(name: "function", definition: "")]
    

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
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.name

        // Configure the cell...

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
