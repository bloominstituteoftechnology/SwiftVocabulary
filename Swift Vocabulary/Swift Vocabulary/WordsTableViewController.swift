//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Wyatt Harrell on 2/17/20.
//  Copyright © 2020 Wyatt Harrell. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    
    @IBOutlet weak var createNewWordButton: UIBarButtonItem!
    
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named variable used to store information. Variables can be changed after being created."), VocabularyWord(word: "Constant", definition: "A named variable used to store information. Variables can not be changed after being created."), VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowDefinitionSegue" {
            let definitionVC = segue.destination as? DefinitionViewController
            
            guard let index = tableView.indexPathForSelectedRow else {
                return
            }
            
            let word = vocabWords[index.row]
            
            definitionVC?.vocabWord = word
        }
    }
    
    
    @IBAction func createNewWordButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Add Word", message: "Add a new word and its definition", preferredStyle: .alert)
        alert.addTextField { (UITextField) in
            UITextField.placeholder = "Word:"
        }
        alert.addTextField { (UITextField) in
            UITextField.placeholder = "Definition:"
        }
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            
            
            guard let newWord = alert.textFields?[0], let newDefinition = alert.textFields?[1] else {
                return
            }
            
            guard let newWordUnwrapped = newWord.text, let newDefinitionUnwrapped = newDefinition.text else {
                return
            }
            
            self.vocabWords.append(VocabularyWord(word: newWordUnwrapped, definition: newDefinitionUnwrapped))
            print(self.vocabWords)
            self.tableView.reloadData()
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
