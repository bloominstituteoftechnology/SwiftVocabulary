//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Marissa Gonzales on 4/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    @IBAction func addWordButton(_ sender: Any) {
        addWord()
    }
    
    
    
    var vocabWords: [Vocabulary] = [
        
        Vocabulary(word: "Var",
                   definition: "var keyword is mutable in swift is used to declare variant value, That value can change at run time."),
        
        Vocabulary(word: "Let",
                   definition: "Let is used to declare constant value and immutable can never be changed once defined"),
        
        Vocabulary(word: "Optional",
                   definition: "An optional is something can that hold a value but can also be 'nil'")
    ]
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        return cell
    }
  
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DefinitionSegue" {
            
         if let detailVC = segue.destination as? WordsDetailViewController,
            
             let indexPath = tableView.indexPathForSelectedRow {
                
            let definition = vocabWords[indexPath.row]
            
            detailVC.words = definition
            
            }
        }
    }
    
    func addWord() {
             Alert.instance.showWithInput(title: "Enter New Word", message: "Enter a Word and Definition", vc: self) { (word) in
                 if word.word != "Word:" && word.definition != "Definition:" && word.word != "" && word.definition != "" { //if a word and definition were entered:
                     self.vocabWords.append(word)
                     self.tableView.reloadData()
                 } else {
                     Alert.instance.show(title: "Word Not Entered", message: "Please Try Again", vc: self)
            }
        }
    }
}

