//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Jon Bash on 2019-10-07.
//  Copyright © 2019 Jon Bash. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A chunk of data with a specific type that can be changed within the program."),
        VocabularyWord(word: "Constant", definition: "A chunk of data with a specific type that cannot be changed once it is initialized."),
        VocabularyWord(word: "Property", definition: "A variable or constant that is part of a struct or class."),
        VocabularyWord(word: "Function", definition: "A set of instructions that are run together. It includes a name, input parameters (0 or more), and a return type (optional)."),
        VocabularyWord(word: "Method", definition: "A function that is part of a struct or class and has direct access to the properties and other methods of that struct/class."),
        VocabularyWord(word: "Array", definition: "An ordered list of items of a specific type."),
        VocabularyWord(word: "Dictionary", definition: "An unordered list of items with a key (of any type) and a value (of any type). Any key may only have one value, but many keys may point to identical values.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard
                let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow
                else { return }
            
            definitionVC.vocabWord = vocabWords[indexPath.row]
        } else if segue.identifier == "AddWordSegue" {
            guard let addWordVC = segue.destination as? AddWordViewController else { return }
            
            addWordVC.wordsTableVC = self
        }
    }
    
    public func addWord(_ word: VocabularyWord) {
        vocabWords.append(word)
        tableView.reloadData()
    }

}
