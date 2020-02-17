//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Karen Rodriguez on 2/17/20.
//  Copyright © 2020 Hector Ledesma. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Hello", definition: "It is a greeting"),
        VocabularyWord(word: "Goodbye", definition: "It is a farewell"),
        VocabularyWord(word: "Hector", definition: "It is my name"),
        VocabularyWord(word: "Ledesma", definition: "It is my lastname")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // WHERE
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let DefinitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else {
                fatalError()
            }
            
            let sentWord = vocabWords[indexPath.row]
            
            DefinitionVC.vocabWord = sentWord
  
        }
        
        // WHAT
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
