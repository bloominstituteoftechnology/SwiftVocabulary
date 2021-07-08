//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Gi Pyo Kim on 9/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Int", definition: "A signed integer value type. On 32-bit platforms, Int is the same size as Int32, and on 64-bit platforms, Int is the same size as Int64."),
                                        VocabularyWord(word: "Double", definition: "A double-precision, floating-point value type."),
                                        VocabularyWord(word: "String", definition: "A Unicode string value that is a collection of characters. A string is a series of characters, such as \"Swift\", that forms a collection. Strings in Swift are Unicode correct and locale insensitive, and are designed to be efficient. The String type bridges with the Objective-C class NSString and offers interoperability with C functions that works with strings. You can create new strings using string literals or string interpolations. A string literal is a series of characters enclosed in quotes."),
                                        VocabularyWord(word: "Array", definition: "An ordered, random-access collection. Arrays are one of the most commonly used data types in an app. You use arrays to organize your app’s data. Specifically, you use the Array type to hold elements of a single type, the array’s Element type. An array can store any kind of elements—from integers to strings to classes. Swift makes it easy to create arrays in your code using an array literal: simply surround a comma-separated list of values with square brackets. Without any other information, Swift creates an array that includes the specified values, automatically inferring the array’s Element type."),
                                        VocabularyWord(word: "Dictionary", definition: "A collection whose elements are key-value pairs. A dictionary is a type of hash table, providing fast access to the entries it contains. Each entry in the table is identified using its key, which is a hashable type such as a string or number. You use that key to retrieve the corresponding value, which can be any object. In other languages, similar data types are known as hashes or associated arrays. Create a new dictionary by using a dictionary literal. A dictionary literal is a comma-separated list of key-value pairs, in which a colon separates each key from its associated value, surrounded by square brackets. You can assign a dictionary literal to a variable or constant or pass it to a function that expects a dictionary.")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController else {
                print("override func prepare :: definitionVC, indexPath unable to unwrap")
                return
        }
        
        definitionVC.vocabWord = vocabWords[indexPath.row]
        
    }
    
    @IBAction func addVocabularyButtonTapped(_ sender: UIButton) {
        var wordTextField: UITextField?
        var definitionTextField: UITextField?
        
        let alertController = UIAlertController(title: "Add New Vocabulary", message: "", preferredStyle: .alert)
        
        alertController.addTextField { (wordInput) -> Void in
            wordTextField = wordInput
            wordTextField!.placeholder = "Enter Word"
        }
        
        alertController.addTextField { (definitionInput) -> Void in
            definitionTextField = definitionInput
            definitionTextField!.placeholder = "Enter Definition"
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { (action) -> Void in
            if let word = wordTextField?.text, let definition = definitionTextField?.text {
                if word != "" && definition != "" {
                    self.vocabWords.append(VocabularyWord(word: word, definition: definition))
                    DispatchQueue.main.async { self.tableView.reloadData() }
                }
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (action : UIAlertAction!) -> Void in
        }
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    

}
