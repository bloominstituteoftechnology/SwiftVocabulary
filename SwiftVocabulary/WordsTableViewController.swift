//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Bobby Keffury on 7/23/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    let amy = "amy"
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A name value used to store information. Variables can be changed after being created."),
                                        VocabularyWord(word: "Constant", definition: "A name value used to store information. Constants can not be changed after being created."),
                                        VocabularyWord(word: "Function", definition: "Self-contained chunks of code that perform a specific task."),]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = vocabWords[indexPath.row].word

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
        let definitionVC = segue.destination as? DefinitionViewController else { return }
        
        let vocabWord = vocabWords[indexPath.row]
        
        definitionVC.vocabWord = vocabWord
        
        
    }


}
