//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Aaron Peterson on 4/8/20.
//  Copyright © 2020 Aaron Peterson. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A named value used to store infomation that can be changed after being created."),
        VocabularyWord(word: "Constant", definition: "A named value used to store infomation that cannot be changed after being created."),
        VocabularyWord(word: "Function", definition: "A self contained chunck of code that performs a specific task.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabWord.word

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController, let indexPath = self.tableView.indexPathForSelectedRow {
                definitionVC.vocabWord = vocabWords[indexPath.row]
            }
        }
    }

}
