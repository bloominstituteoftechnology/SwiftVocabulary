//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Claudia Contreras on 1/28/20.
//  Copyright © 2020 thecoderpilot. All rights reserved.
//

import UIKit

var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Variable", definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword."),
    VocabularyWord(word: "Class", definition: "A piece of code that describes the behavior and properties common to any particular type of object, essentially providing a blueprint for the object."),
    VocabularyWord(word: "Downcast", definition: "To attempt to cast an object to one of its subclass types.")
]

class WordsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //1. Make sure you are using the correct segue
        if segue.identifier == "ShowDefinitionSegue" {
            
            //2. Get the instance of your detail view from the segue's destination
            //3. Get the index path for the row that the user tapped
            if let detailViewController = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                
                //4. Initialize the word with indexPath
                let word = vocabWords[indexPath.row]
                
                //5. Pass the struct to the detail view
                detailViewController.vocabWord = word
            }
        }
    }

}
