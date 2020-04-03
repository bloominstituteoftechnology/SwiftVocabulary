//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Shawn James on 3/16/20.
//  Copyright © 2020 Shawn James. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    // MARK: - Properties
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Timer", definition: "A timer that fires after a certain time interval has elapsed, sending a specified message to a target object."),
                                        VocabularyWord(word: "String", definition: "A Unicode string value that is a collection of characters."),
                                        VocabularyWord(word: "SignedInteger", definition: "An integer type that can represent both positive and negative values.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Actions
    @IBAction func addNewWordButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Add a new word", message: "What word would you like to add?", preferredStyle: .alert)
        alert.addTextField { (textField) in textField.placeholder = "Enter Word" }
        alert.addTextField { (textField) in textField.placeholder = "Enter Definition" }
        alert.addAction(UIAlertAction(title: NSLocalizedString("Save", comment: "Default action"), style: .default, handler: { _ in NSLog("Save Button Tapped")
            self.vocabWords.append(VocabularyWord(word: alert.textFields?[0].text ?? "", definition: alert.textFields?[1].text ?? ""))
            self.tableView.reloadData()
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { vocabWords.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionViewController = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            // Pass the selected object to the new view controller.
            definitionViewController.vocabWord = vocabWords[indexPath.row]
        }
    }
    
}
