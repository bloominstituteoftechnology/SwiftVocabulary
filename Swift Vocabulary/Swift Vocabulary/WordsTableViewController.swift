//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by Enzo Jimenez-Soto on 4/13/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "  Any named piece of data in your code that may change when your program runs."),
                                        VocabularyWord(word: "Constant", definition: "  Any named piece of data in your code that may not change when your program runs."),
                                        VocabularyWord(word: "Function", definition: "  A named section of your code that performs a specific, reusable task. You might pass in parameters to the function to customize how it runs, and it might return one or more values that are the result of its work.")
                                        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {

            
            if let selectedIndexPath = tableView.indexPathForSelectedRow,
                let defVC = segue.destination as? DefinitionViewController {
                
                let word = vocabWords[selectedIndexPath.row]
                
                defVC.vocabWord = word
            }
        }
    }
}
