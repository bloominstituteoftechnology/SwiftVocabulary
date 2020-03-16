//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn James on 3/16/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    // MARK: - Properties
    let vocabWords: [VocabularyWord] = [VocabularyWord(word: "Timer", definition: "A timer that fires after a certain time interval has elapsed, sending a specified message to a target object."),
                                        VocabularyWord(word: "String", definition: "A Unicode string value that is a collection of characters."),
                                        VocabularyWord(word: "SignedInteger", definition: "An integer type that can represent both positive and negative values.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { vocabWords.count }

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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionViewController = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            // Pass the selected object to the new view controller.
            definitionViewController.vocabWord = vocabWords[indexPath.row]
        }
    }
    
}
