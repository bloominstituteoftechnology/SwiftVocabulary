//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Ciara Beitel on 8/12/19.
//  Copyright © 2019 Ciara Beitel. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Integer", definition: "A whole number."),
                                        VocabularyWord(word: "Double", definition: "A high-precision floating-point number."),
                                        VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false."),
                                        VocabularyWord(word: "String", definition: "A collection of letters."),
                                        VocabularyWord(word: "Constant", definition: "Any named piece of data in your code that may not change when your program runs."),
                                        VocabularyWord(word: "Variable", definition: "Any named piece of data in your code that may change when your program runs."),
                                        VocabularyWord(word: "Function", definition: " A named section of your code that performs a specific, reusable task."),
                                        ]

    override func viewDidLoad() {
        super.viewDidLoad()

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

        let vocabularyWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabularyWord.word

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
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
            let defVC = segue.destination as? DefinitionViewController else { return }
            
            let selectedVocabularyWord = vocabWords[indexPath.row]
            
            defVC.vocabWord = selectedVocabularyWord
        }
    }
    

}
