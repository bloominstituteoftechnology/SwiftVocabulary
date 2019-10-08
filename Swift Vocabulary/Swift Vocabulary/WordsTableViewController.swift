//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Rick Wolter on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    
    
    var vocabWords: [VocabularyWord] = [
                                VocabularyWord(word: "Twitter",definition: "A place one goes when one should be doing other things."),
                                VocabularyWord(word: "Communism",definition: "The only type of poltical theory that sounds fair and wonderful, but in practice is more like the department of corrections."),
                                VocabularyWord(word: "Orlando Magic",definition: "We once were nice."),
                                VocabularyWord(word: "Biggie",definition: "The goat of rap."),
                                VocabularyWord(word: "Emenim",definition: "Co-Goat of rap."),
                                VocabularyWord(word: "Swift",definition: "The goat of programming languages."),
                                 VocabularyWord(word: "Objective-C",definition: "Needs to move over for the goat."),
                                     VocabularyWord(word: "Ultima",definition: "The goat of video games.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        

        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word

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
            guard let indexPath = tableView.indexPathForSelectedRow, let wordDetailVC = segue.destination as? DefinitionViewController else {return}
            
            let wordToPass = vocabWords[indexPath.row]
            wordDetailVC.vocabWord = wordToPass
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
