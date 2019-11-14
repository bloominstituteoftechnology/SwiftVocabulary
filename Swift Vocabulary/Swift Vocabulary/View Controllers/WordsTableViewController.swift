//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by alfredo on 11/13/19.
//  Copyright © 2019 alfredo. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
//    2. Add a variable property called `vocabWords` of type `[VocabularyWord]` (array of `VocabularyWord` objects)
    var vocabWords: [VocabularyWord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addWords()
    }
    func addWords(){
        vocabWords.append(VocabularyWord(word:"Lollygag",definition: "To dawdle or be overly slow."))
        vocabWords.append(VocabularyWord(word:"Bumfuzzle",definition: "To confuse someone."))
        vocabWords.append(VocabularyWord(word:"Nudiustertian",definition: "The recent past (literally \"the day before yesterday\")."))
        vocabWords.append(VocabularyWord(word:"Brouhaha",definition: "An overexcited response."))
     }
    // MARK: - Table view data source

    // #warning Incomplete implementation, return the number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    // Configure the cell...
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabularyWord = vocabWords[indexPath.row].word
        cell.textLabel?.text = vocabularyWord
        return cell
    }
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Check to make sure the segue's identifier is `"ShowDefinitionSegue"`.
        guard segue.identifier == "ShowDefinitionSegue"    else { return }
        // Get the destination `DefinitionViewController` by conditionally casting `segue.destination` to `DefinitionViewController`.
        if let destinationDefinitionViewController = segue.destination as? DefinitionViewController{
            // Get the index path for the selected row using `tableView.indexPathForSelectedRow`.
            let indexPathForSelectedRow = tableView.indexPathForSelectedRow!.row
            // Use that index path to get the appropriate `VocabularyWord` instance from `vocabController`'s `vocabWords` array.
            let vocabularyWordInstance = vocabWords[indexPathForSelectedRow]
            destinationDefinitionViewController.vocabWord = vocabularyWordInstance
        }
         // Pass the selected object to the new view controller.
        
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
}
