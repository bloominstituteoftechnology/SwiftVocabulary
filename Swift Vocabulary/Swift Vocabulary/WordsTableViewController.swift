//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Hunter Oppel on 3/16/20.
//  Copyright © 2020 LambdaSchool. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    @IBOutlet weak var WordsTableAddWordButton: UIButton!
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
                                        VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can't be changed after creation."),
                                        VocabularyWord(word: "Function", definition: "A named block of code that can be called at any time to be run.")]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    @IBAction func WordsTableAddWordButtonPress(_ sender: Any) {
        let ac = UIAlertController(title: "Enter word and definition", message: nil, preferredStyle: .alert)
        ac.addTextField()
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            guard let addedWord = ac.textFields?[0].text, let addedDefinition = ac.textFields?[1].text else {
                return
            }
            let newWord = VocabularyWord(word: addedWord, definition: addedDefinition)
            self.vocabWords.append(newWord)
            self.loadView()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { [unowned ac] _ in }
        
        ac.addAction(submitAction)
        ac.addAction(cancelAction)
        self.present(ac, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                let word = vocabWords[indexPath.row]
                definitionVC.vocabWord = word
            }
        }
    }

}
