//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by morse on 10/7/19.
//  Copyright © 2019 morse. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    struct PropertyKeys {
        static let wordCell = "WordCell"
        static let showDefinitionSegue = "ShowDefinitionSegue"
    }
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Abstraction", definition: "An abstraction groups things together, so you can think of the group as a single, easier-to-remember thing instead of trying to reason about each of the elements separately. Abstraction allows programmers to make decisions and think through code logic without getting overwhelmed by details and complexity."), VocabularyWord(word: "Accessibility", definition: "Accessibility features on iOS include VoiceOver, Zoom, Invert Colors, and more. These features improve the experience for users with particular preferences or needs, possibly stemming from visual, audible, or motor impairments."), VocabularyWord(word: "Accessory View", definition: "Table view cells have an accessory view that can be used to display additional information.")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Add a Word?", message: "Type the word and definition.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (_) in
            self.add(word: alert.textFields?[0].text ?? "", definition: alert.textFields?[1].text ?? "")
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addTextField(configurationHandler: { textfield in textfield.placeholder = "Word" })
        alert.addTextField(configurationHandler: { textfield in textfield.placeholder = "Definition" })
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func add(word: String, definition: String) {
        if !word.isEmpty && !definition.isEmpty {
            vocabWords.append(VocabularyWord(word: word, definition: definition))
            tableView.reloadData()
        }
    }
    
//    An action, or IBAction, connects a method in source code and a control in Interface Builder, allowing particular code to run when a user interacts with the app's controls. For example, a certain method may be associated with an action, such as a button tap or a switch change.

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
    
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.wordCell, for: indexPath)
        
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == PropertyKeys.showDefinitionSegue {
            let definitionVC = segue.destination as? DefinitionViewController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let vocabWord = vocabWords[indexPath.row]
            definitionVC?.vocabWord = vocabWord
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
