//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Kennedy Samarakody on 11/17/19.
//  Copyright © 2019 Kennedy Samarakody. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Constant", definition: "a property that contains a value. Cannot be changed"), VocabularyWord(word: "Variable", definition: "a property that contains a value. Can be changed"), VocabularyWord(word: "Function", definition: "a set of code that lets you do a specific task")]

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
        
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        


        // Configure the cell...

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

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow, let wordDetailVC = segue.destination as? DefinitionViewController else { return }
            let cellWord = vocabWords[indexPath.row]
            wordDetailVC.vocabWord = cellWord
            
        }
      
    

}


}
