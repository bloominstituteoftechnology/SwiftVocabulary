//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Thomas Sabino-Benowitz on 8/12/19.
//  Copyright © 2019 Thomas Sabino-Benowitz. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Swift", definition: "Swift is apple's primary code language for iOS. It has some features that were not present in the previous language, objective C, such as Type Inference and Optionals (defined later)"),
                                        VocabularyWord(word: "Objective C", definition: "Objective C was the previous code language used by apple as the primary language for iOS development in xCode. It is still used today to maintain older codebases and for certain other reasons"),
                                        VocabularyWord(word: "Type Inference", definition: "Type Inference is a feature which allows automatic detection by your IDE of the data type of used expressions"),
                                        VocabularyWord(word: "Optional", definition: "An optional is a data type that represents either a wrapped value or nil, the absence of a value"),
                                        VocabularyWord(word: "Objective C", definition: "Swift is apple's primary code language for iOS. It has some features that were not present in the previous language, objective C, such as Type Inference and Optionals (defined later)"),
                                        VocabularyWord(word: "\"\"", definition: "an empty string is a string without any characters in it"),
                                        VocabularyWord(word: "SwiftUI", definition: "SwiftUI is a new implementation of swift for design, it's a library which offers new tools for designing apps such as transitions, buttons, sliders, etc., never before seen in Swift. Previously the swift design library was \"UIkit\""),
                                        VocabularyWord(word: "Word", definition: "No list of words is complete without the word word itsself. The word word has historically been used to represent some concept or \"real thing\". Its meaning can be rendered as \"a grouping of characters intended to be presented both through speech and as writing which convey a meaning\"")
    
                                        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Vocabulary Words"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        cell.backgroundColor = .cyan
       
    

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
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
            let definedVC = segue.destination as? DefinitionViewController
                else { return }
            
            let selectedWord = vocabWords[indexPath.row]
            definedVC.selectedWord = selectedWord
           

        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
