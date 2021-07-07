//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Craig Swanson on 9/18/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    // Initialize array with three "starter" words
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "String", definition: "A string is a series of characters, such as \"hello, world\" or \"albatross\". Swift strings are represented by the String type. The contents of a String can be accessed in various ways, including as a collection of Character values."), VocabularyWord(word: "Variable", definition: "A named value used to store information. Variable can be changed after being created."), VocabularyWord(word: "Constant", definition: "A named value used to store information. Constant cannot be changed after being created.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let currentWord = vocabWords[indexPath.row]
       cell.textLabel?.text = currentWord.word

        return cell
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let detailVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
        
        // Pass the selected object to the new view controller.
        let currentWord = vocabWords[indexPath.row]
            detailVC.vocabWord = currentWord
        }
    }
    
    // Function allows user to add a new word to the vocabulary dictionary
    @IBAction func addNewVocabWord(_ sender: Any) {
        let alert = UIAlertController(title: "Add New Word", message: "Enter a new vocabulary word", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "New Word Entry"
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "New Word Definition"
        }
        
        // This captures the user entry and assigns it to constants
        alert.addAction(UIAlertAction(title: "Create", style: .default, handler: { (_) in
            guard let word = alert.textFields?[0].text, !word.isEmpty else { return }
            guard let definition = alert.textFields?[1].text, !definition.isEmpty else { return }
            let newEntry = VocabularyWord(word: word, definition: definition)
            
           // This takes the user entry and appends it to the existing array
            self.vocabWords.append(newEntry)
            self.tableView.reloadData()  // reloads the data to show onscreen
        }))
        
        present(alert, animated: true, completion: nil)
    }
    

}
