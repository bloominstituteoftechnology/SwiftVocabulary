//
//  TableViewController.swift
//  Swift Vocabulary
//
//  Created by Isaac Grove on 11/4/19.
//  Copyright © 2019 Isaac Grove. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Isaac", definition: "That dude")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //  (Maybe wrong) return the number of rows
        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        let vocab = vocabWords[indexPath.row]
        cell.textLabel?.text = vocab.word

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
        if segue.identifier == "ShowDefinitionSegue" {
            guard let destinationVC = segue.destination as? DefinitionViewController else {
                return
            }
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let vocabWord = vocabWords[indexPath.row]
            destinationVC.vocabWord = vocabWord
            
        } // Get the index path for the selected row using tableView.indexPathForSelectedRow.
       // Use that index path to get the appropriate VocabularyWord instance from vocabController's vocabWords array.
       // Assign the vocabulary word to the DefinitionViewController's vocabWord property.
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
