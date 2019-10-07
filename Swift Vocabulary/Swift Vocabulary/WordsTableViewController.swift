//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_204 on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Operator", definition: "Special symbol or phrase used to check,                                     change, or combine values."),
                                        VocabularyWord(word: "Function", definition: "Self-contained chucks of code that perform a specific task."),
                                        VocabularyWord(word: "Enumeration", definition: "Group of related values you can work in a type-safe way within your code")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Swift Vocabulary"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word
        
        return cell
    }

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "ShowDefinitionSegue") {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let definitionWordVC = segue.destination as? DefinitionViewController else { return }
            
            definitionWordVC.vocabWord = vocabWords[indexPath.row]
        }
    }


}
