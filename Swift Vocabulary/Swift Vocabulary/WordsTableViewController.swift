//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Christy Hicks on 9/16/19.
//  Copyright © 2019 Rainn Inc. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // Variables
    var vocabWords: [VocabularyWord] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let word1 = VocabularyWord(word: "Variable", definition: "A named value used to store information.  Variables can be changed after being created.")
        
        let word2 = VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants cannot be changed after being created.")
        
        let word3 = VocabularyWord(word: "Kids", definition: "Small humanoid creatures with nearly unlimited energy sources that like to be super active and loud during class.")
        
        let word4 = VocabularyWord(word: "Team Lead", definition: "The amazing person at Lambda who helps clarify concepts and ensures you understand the lesson.")
        
        vocabWords.append(word1)
        vocabWords.append(word2)
        vocabWords.append(word3)
        vocabWords.append(word4)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
            guard let detailVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            let word = vocabWords[indexPath.row]
            detailVC.word = word
            
        }
    }        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
   
    
    
}



