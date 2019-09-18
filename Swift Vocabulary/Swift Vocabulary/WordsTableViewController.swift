//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Blake Andrew Price on 9/18/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information that can be altered."),
                                        VocabularyWord(word: "Constant", definition: "A named value used to store information that cannot be altered."),
                                        VocabularyWord(word: "Function", definition: "A sequence of program instructions that performs a specific task, packaged as a unit.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            let row = selectedIndexPath.row
            let selectedWord = vocabWords[row]
            let definitionVC = segue.destination as! DefinitionViewController
            definitionVC.vocabWord = selectedWord
        }
    }
}
