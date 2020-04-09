//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Rob Vance on 4/7/20.
//  Copyright © 2020 Robs Creations. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }

    var vocabWords: [VocabularyWord] = [
    VocabularyWord(word: "Constant", definition: "A fixed value that a program my not alter during its excution. Constants can be of any basic data types."),
    VocabularyWord(word: "Double", definition: "Unlike integers, doubles can have fractional components, such as 3.14 and -54.123"),
    VocabularyWord(word: "Interger", definition: "A Whole number with no fractional component, such as 56 and -13")
    
    
    
    ]

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocab = vocabWords[indexPath.row]
        cell.textLabel?.text = vocab.word
        cell.backgroundColor = .green
        view.backgroundColor = .green

        return cell
    }
    

    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow, let definitionVC = segue.destination as? DefinitionViewController {
                let definition = vocabWords[indexPath.row]
                definitionVC.vocabWord = definition
               
                // Get the new view controller using segue.destination.
                // Pass the selected object to the new view controller.
            }
            
        }
    }
   

}
extension WordsTableViewController: AddWordDelegate {
    func wordWasAdded(_ newWord: VocabularyWord) {
        vocabWords.append(newWord)
        tableView.reloadData()
    }
    
}
    
    

