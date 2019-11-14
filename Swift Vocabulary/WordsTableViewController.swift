//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Alfredo on 8/27/19.
//  Copyright © 2019 testtest123. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    // Add a variable property called vocabWords of type [VocabularyWord] (array of VocabularyWord objects)
    var vocabWords: [VocabularyWord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addWords()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func addWords(){
        vocabWords.append(VocabularyWord(word:"Lollygag",definiton: "To dawdle or be overly slow."))
        vocabWords.append(VocabularyWord(word:"Bumfuzzle",definiton: "To confuse someone."))
        vocabWords.append(VocabularyWord(word:"Nudiustertian",definiton: "The recent past (literally \"the day before yesterday\")."))
        vocabWords.append(VocabularyWord(word:"Brouhaha",definiton: "An overexcited response."))
    }
    // MARK: - Table view data source
    
    // How many rows does the tableview need to have?
    // Implement tableView(_ tableView:, numberOfRowsInSection section:).
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Make it return the number of vocab words in vocabWords property.
        return vocabWords.count
    }
    // What information should be on the cell?
    // ImplementtableView(_ tableView:, cellForRowAt indexPath:).
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        //get the right VocabularyWord for the index path
        let word = self.vocabWords[indexPath.row].word
        //then set the cell's textLabel's text to the vocab word's word property.
        cell.textLabel?.text = word
        return cell
    }
     // MARK: - Navigation
//    5.    In the prepare(for:sender:)(uncomment the method so it is live code):
//    o    Check to make sure the segue's identifier is "ShowDefinitionSegue".
//    o    Get the destination DefinitionViewController by conditionally casting segue.destination to DefinitionViewController.
//    o    Get the index path for the selected row using tableView.indexPathForSelectedRow.
//    o    Use that index path to get the appropriate VocabularyWord instance from vocabController's vocabWordsarray.
//    o    Assign the vocabulary word to the DefinitionViewController's vocabWord property.

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue"{
            if let showDefVC = segue.destination as? DefinitionViewController,
                let indexPath = self.tableView.indexPathForSelectedRow{
                let vocabWord = self.vocabWords[indexPath.row]
                showDefVC.vocabWord = vocabWord
            }
        }
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
    
    //DELETE
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



}
