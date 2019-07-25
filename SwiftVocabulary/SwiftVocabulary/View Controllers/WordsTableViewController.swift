//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Joel Groomer on 7/23/19.
//  Copyright © 2019 Julltron. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A mutable named value used to store information."),
        VocabularyWord(word: "Constant", definition: "A named value used to store information that cannot be changed once defined."),
        VocabularyWord(word: "Function", definition: "The definition of a series of instructions that can be called multiple times by name throughout an application."),
        VocabularyWord(word: "String", definition: "A series of characters taken together as a single unit."),
        VocabularyWord(word: "Bool", definition: "Short for \"Boolean,\" a statement that evaluates to either true or false"),
        VocabularyWord(word: "Int", definition: "Short for \"Integer,\" a signed (positive or negative) whole number."),
        VocabularyWord(word: "UInt", definition: "An \"Unsigned Integer,\" which is any whole number greater than or equal to zero.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            vocabWords.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let destination = segue.destination as? DefinitionViewController
                else { return }
            
            destination.vocabularyWord = vocabWords[indexPath.row]
        }
    }
 

    @IBAction func btnAddNewTapped(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add a Word", message: "Please enter the details below.", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { txt in txt.placeholder = "Word" })
        alert.addTextField(configurationHandler: { txt in txt.placeholder = "Definition" })
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {
            _ in guard let newWord = alert.textFields?[0].text,
                let newDefinition = alert.textFields?[1].text else { return }
            
            self.vocabWords.append(VocabularyWord(word: newWord, definition: newDefinition))
            
            self.tableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: { _ in print("Adding a word cancelled")}))
        
        
        
        present(alert, animated: true)
    }
    
}
