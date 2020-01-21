//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Malik Barnes on 12/9/19.
//  Copyright © 2019 Malik Barnes. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(name: "Malik", definition: "King"),
                                        VocabularyWord(name: "Beacon", definition: "A person or thing that illuminates or inspires."),
                                         VocabularyWord(name: "Prolific", definition: "Profusely productive or fruitful.")]
                                        

   
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
         print(indexPath.row)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.name

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "ShowDefinitionSegue" {
        
        if let indexPath = tableView.indexPathForSelectedRow,
                        let definitionVC = segue.destination as? DefinitionViewController {
                        let word = vocabWords[indexPath.row]
                        definitionVC.vocabWord = word
         }
      }
   }
}
