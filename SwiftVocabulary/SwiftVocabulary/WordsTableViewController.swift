//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Joshua Rutkowski on 11/13/19.
//  Copyright © 2019 Joshua Rutkowski. All rights reserved.
//

import UIKit


class WordsTableViewController: UITableViewController {
    
    var words: [VocabularyWord] = [vocabConstant, vocabArray, vocabFunction]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return words.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabWord = words[indexPath.row]
        cell.textLabel?.text = vocabWord.word
        
        return cell
    }
    
    // MARK: - Personal Stretch Goal: Swipe to delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            words.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let vocabWordVC = segue.destination as? DefinitionViewController {
                
                let word = words[indexPath.row]
                vocabWordVC.vocabWord = word
                
            }

        }
    }
    // MARK: Stretch Goal: AddItems
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add new word", message: "", preferredStyle: .alert)
        
        alert.addTextField()
        alert.addTextField()
        alert.textFields![0].placeholder = "Word"
        alert.textFields![1].placeholder = "Definition"
        
        alert.addTextField()
        alert.addTextField()
        alert.textFields![0].placeholder = "Word"
        alert.textFields![1].placeholder = "Definition"
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {action in
            guard let newWord = alert.textFields?[0].text,
                let newDefinition = alert.textFields?[1].text else { return }
            
            if newWord.count < 1 || newDefinition.count < 1 {
                let noValueAlert = UIAlertController(title: "Error", message: "You have left a field empty! ", preferredStyle: .alert)
                noValueAlert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(noValueAlert, animated: true)
            } else {
                self.newWordAdded(newWord: newWord, newDefinition: newDefinition)
            }
        }))
        present(alert, animated: true)
    }
    func newWordAdded(newWord: String, newDefinition: String) {

        let newVocabWord = VocabularyWord(word: newWord, definition: newDefinition)
        words.append(newVocabWord)

        self.tableView.reloadData()
    }
    
}
