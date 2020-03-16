//
//  WordsTableViewController.swift
//  SwiftVocab
//
//  Created by Harmony Radley on 3/16/20.
//  Copyright © 2020 Harmony Radley. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] =
        [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after being created."),
         VocabularyWord(word: "Constant", definition: "Refers to fixed values that a program may not alter during its execution."),
         VocabularyWord(word: "Function", definition: "Is a set of statements organized together to perform a specific task.")]
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

      let vocab = vocabWords[indexPath.row]
      
      cell.textLabel?.text = vocab.word

        return cell
    }
   


  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let vocab = vocabWords[indexPath.row]
        
        let definitionVC = segue.destination as? DefinitionViewController
        
        definitionVC?.vocabWord = vocab
    }


}
}
