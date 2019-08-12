//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Percy Ngan on 8/12/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

	var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Arrray", definition: "A sequential collection of values of any type, such as an array of names in a band."),

										VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods. Unlike structs, classes are reference types."),

										VocabularyWord(word: "Class Inheritance", definition: "The ability for one class to build on another, inheriting all its methods and properties. Some languages allow one class to inherit from multiple parents, but Swift does not.")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

		let vocabWord = vocabWords[indexPath.row]

		cell.textLabel?.text = vocabWord.word

		

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

		if segue.identifier == "ShowDefinitionSegue" {
			guard let indexPath = tableView.indexPathForSelectedRow,
				let definitionVC = segue.destination as? DefinitionViewController else { return }

			let vocab = vocabWords[indexPath.row]

			definitionVC.vocabWord = vocab

		}


    }


}
