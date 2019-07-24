//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Fabiola S on 7/23/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "aplomb", definition: "great coolness and composure under strain"),
                                        VocabularyWord(word: "brackish", definition: "slightly salty"),
                                        VocabularyWord(word: "swift", definition: "acting or moving or capable of acting or moving quickly"),
                                        VocabularyWord(word: "concatenate", definition: "add by linking or joining so as to form a chain or series")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionVC = segue.destination as? DefinitionViewController else { return }
            
            let wordCell = vocabWords[indexPath.row]
           
            definitionVC.vocabWord = wordCell
           
        }
    }


}
