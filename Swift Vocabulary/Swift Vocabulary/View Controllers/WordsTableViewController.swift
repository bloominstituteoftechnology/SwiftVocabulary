//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by denis cedeno on 9/18/19.
//  Copyright © 2019 DenCedeno Co. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate. Each variable in Swift 4 has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable."),
        VocabularyWord(word: "Constant", definition: "Constants refer to fixed values that a program may not alter during its execution. Constants can be of any of the basic data types like an integer constant, a floating constant, a character constant, or a string literal. There are enumeration constants as well. Constants are treated just like regular variables except the fact that their values cannot be modified after their definition."),
        VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocab = self.vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocab.self.word

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            guard let definitionVC = segue.destination as? DefinitionViewController,
            let indexPath = tableView.indexPathForSelectedRow else {return}
            let definition = vocabWords[indexPath.row]
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
            definitionVC.vocabWord = definition
            
        }
        
    }
    

    @IBAction func addNewVocabWord(_ sender: Any) {
        let alert = UIAlertController(title: "Add new Swift Vocabulary Word", message: "add new word and definition", preferredStyle: .alert)
        
        alert.addTextField { (textfield) in
            textfield.placeholder = "Vocabulary Word"
        }
        alert.addTextField { (textfield) in
            textfield.placeholder = "Word Definition"
        }
        
        alert.addAction(UIAlertAction(title: "Create", style: .default, handler: { (_) in
            guard let word = alert.textFields?[0].text, !word.isEmpty else {return}
            guard let definition = alert.textFields?[1].text, !definition.isEmpty else {return}
            let newWord = VocabularyWord(word: word, definition: definition)
            
            self.vocabWords.append(newWord)
            self.tableView.reloadData()
        }))
        present(alert, animated: true, completion: nil)
    }
}
