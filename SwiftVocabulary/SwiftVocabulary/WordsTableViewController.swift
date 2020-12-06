//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by James McDougall on 12/6/20.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    let wordCell: String = "WordCell"
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created"),
                                        VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can NOT be changed after being created."),
                                        VocabularyWord(word: "Function", definition: "An object that can be used to do work with an application. This can be modified to do anything that you want it to.")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: wordCell, for: indexPath)
        let myWord = vocabWords[indexPath.row]
        cell.textLabel?.text = myWord.word
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
              let definitionDetailVC = segue.destination as? DefinitionViewController else { return }
        
        definitionDetailVC.vocabWord = vocabWords[indexPath.row]
    }

}
