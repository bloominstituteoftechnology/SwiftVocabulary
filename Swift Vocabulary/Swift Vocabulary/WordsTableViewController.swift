//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Enrique Gongora on 1/20/20.
//  Copyright © 2020 Enrique Gongora. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Constants and Variables", definition: "Constants and variables associate a name  with a value of a particular type. The value of a constant can’t be changed once it’s set, whereas a variable can be set to a different value in the future."),
    VocabularyWord(word: "Functions", definition: "Functions are self-contained chunks of code that perform a specific task."),
    VocabularyWord(word: "Closures", definition: "Closures are self-contained blocks of functionality that can be passed around and used in your code."),
    VocabularyWord(word: "Enumerations", definition: "An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code."),
    VocabularyWord(word: "Protocols", definition: "A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Swift Vocabulary"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        cell.textLabel?.text = vocabWords[indexPath.row].word
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController{
                let definition = vocabWords[indexPath.row]
                definitionVC.vocabWord = definition
            }
        }
    }

}
