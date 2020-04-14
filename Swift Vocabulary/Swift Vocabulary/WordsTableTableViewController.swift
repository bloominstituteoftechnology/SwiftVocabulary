//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by ronald huston jr on 4/11/20.
//  Copyright © 2020 HenryQuante. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord]? = [
        VocabularyWord(word: "variable", definition: "a named value used to store information; able to change value."),
        VocabularyWord(word: "constant", definition: "a named value used to store information; unmutable."),
        VocabularyWord(word: "function", definition: "a self-contained chunck of code that performs a specific task")
    ] 
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell") else { return UITableViewCell() }
        
        let word = self.vocabWords?[indexPath.row]
        
        cell.textLabel?.text = word?.word

        return cell
    }



    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let destination = segue.destination as? DefinitionViewController,
                let row = tableView.indexPathForSelectedRow?.row,
                let word = vocabWords?[row] else { return } 
            destination.vocabWord = word
        }
    }

}
