//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Sammy Alvarado on 2/24/21.
//

import UIKit

class WordsTableViewController: UITableViewController {

    // MARK: - Property
    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Data", definition: "A type that holds any kind of binary data."),
        VocabularyWord(word: "Condition", definition: "Any check that evaluates to true or false using an if statement. You can provide code to run when your condition is true, as well as an else"),
        VocabularyWord(word: "Final class", definition: "A class that may not be inherited from by anything else."),
        VocabularyWord(word: "Force unwrap", definition: "The process of using the value inside an optional without checking it exists first. If the optional is empty – if it has no value – force unwrapping will crash your code."),
        VocabularyWord(word: "Hashable", definition: "A common Swift protocol that says conforming types can be represented using hash values."),
        VocabularyWord(word: "Higher-order function", definition: "A function that accepts another function as a parameter, or sends back a function as its return value."),]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

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
            guard let definitionVC = segue.destination as? DefintionViewController,
                  let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocab = vocabWords[indexPath.row]
            definitionVC.vocabWords = vocab
        }
    }
    
    
    @IBAction func addNewWord(_ sender: Any) {
        let alert = UIAlertController(title: "Added Word", message: "Add a new Vocab and Definiation", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "New Word"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Definition"
        }
        
        alert.addAction(UIAlertAction(title: "Create", style: .default, handler: { (_) in
            guard let newWord = alert.textFields?[0].text, !newWord.isEmpty,
                  let newDefinition = alert.textFields?[1].text, !newDefinition.isEmpty else { return }
            
            let newVocab = VocabularyWord(word: newWord, definition: newDefinition)
            
            self.vocabWords.append(newVocab)
            self.tableView.reloadData()
        }))
        
        present(alert, animated: true, completion: nil)
    }
}

