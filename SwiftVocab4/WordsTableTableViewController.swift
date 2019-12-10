//
//  WordsTableTableViewController.swift
//  SwiftVocab4
//
//  Created by user162867 on 12/9/19.
//  Copyright © 2019 user162867. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWords : [VocabularyWord] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appendVWords()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func appendVWords() {
        vocabWords.append(VocabularyWord(word: "Apple", definition: "A red, delicious fruit"))
        vocabWords.append(VocabularyWord(word: "Orange", definition: "An orange, delicious fruit"))
        vocabWords.append(VocabularyWord(word: "Kiwi", definition: "A green, delicious fruit"))
        vocabWords.append(VocabularyWord(word: "Plum", definition: "A purple, delicious fruit"))
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...,.
        cell.textLabel?.text = self.vocabWords[indexPath.row].word

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
    }bbbbb
    */

    
    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        if segue.identifier == "ShowDestinationSegue" {
//            if let definitionVC = segue.destination as? DefinitionViewController {
//                if let indexPath = self.tableView.indexPathForSelectedRow {
//                    let word = self.vocabWords[indexPath.row]
//                    definitionVC.vocabWord = word
//                }
//            }
//        }
//        // Pass the selected object to the new view controller.
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let wordVC = segue.destination as? DefinitionViewController
                let word = vocabWords[indexPath.row]
                wordVC?.vocabWord = word
            }
        }
    }
    

}
