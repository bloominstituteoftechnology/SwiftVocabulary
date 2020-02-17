//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by fthmls on 2/17/20.
//  Copyright © 2020 fthmls. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords = [
        VocabularyWord(word: "@autoclosure", definition: "An attribute attached to function parameters that are closures, which asks Swift to silently wrap any code using it in a closure rather than requiring users to do it by hand. This is used rarely, but it's important in the assert() function."),
        VocabularyWord(word: "@available", definition: "An attribute attached to types or functions that mark them as being available or unavailable to specific versions of Swift or operating systems."),
        VocabularyWord(word: "@discardableResult", definition: "An attribute attached to methods that return a value, marking the return value as safe to ignore if the caller wants to. When this is not used, Swift will show a warning if you don't do something with the function's return value."),
        VocabularyWord(word: "@dynamicCallable", definition: "An attribute attached to types to mark them as being directly callable, primarily so that Swift can interact more easily with dynamic languages such as Python."),
        VocabularyWord(word: "@dynamicMemberLookup", definition: "An attribute attached to types to mark them as being able to handle undefined properties using special methods, primarily so that Swift can interact more easily with dynamic languages such as Python."),
        VocabularyWord(word: "@escaping", definition: "An attribute attached to function parameters that are closures, which tells Swift the closure will be used after the function has returned. This will in turn cause Swift to store the closure safely so that it doesn't get destroyed prematurely."),
        VocabularyWord(word: "@objc", definition: "An attribute used to mark methods and properties that must be accessible to Objective-C code. Swift does not make its code accessible to Objective-C by default to avoid making the code larger than it needs to be."),
        VocabularyWord(word: "@objcMembers", definition: "An attribute used to mark classes where all properties and methods must be accessible to Objective-C code. Swift does not make its code accessible to Objective-C by default to avoid making the code larger than it needs to be."),
        VocabularyWord(word: "@unknown", definition: "An attribute attached to the default case of switch blocks that allows code to handle enum cases that may be added at some point in the future, without breaking source compatibility."),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addVocabularyWord))
    }
    
    @objc func addVocabularyWord() {
        let alert = UIAlertController(title: "New word", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { _ in
            guard let newWord = alert.textFields?[0].text, let newDefinition = alert.textFields?[1].text else { return }
            let vocabWord = VocabularyWord(word: newWord, definition: newDefinition)
            self.vocabWords.append(vocabWord)
            let row = self.vocabWords.index(before: self.vocabWords.endIndex)
            let path = IndexPath(row: row, section: 0)
            self.tableView.insertRows(at: [path], with: .automatic)
        }))
        alert.addTextField() { textField in
            textField.placeholder = "Word"
        }
        alert.addTextField() { textField in
            textField.placeholder = "Definition"
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
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
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue", let destination = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow {
            destination.vocabWord = vocabWords[indexPath.row]
        }
    }
    
    
}
