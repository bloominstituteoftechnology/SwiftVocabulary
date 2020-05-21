//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by Joseph Rogers on 7/19/19.
//  Copyright © 2019 Joe Rogers. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
  
  
    
    var vocabWord : [VocabularyWord] = [vocabVariable, vocabConstant, vocabFunction, voacabOptional]
    
    
    
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
        return vocabWord.count
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            vocabWord.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
        
    }
//
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
      
       let words = vocabWord[indexPath.row].word
        cell.textLabel?.text = words
        return cell
    
    }
    
    //MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let selectedIndexPath = tableView.indexPathForSelectedRow!
        let vocabWordUsed = vocabWord[selectedIndexPath.row]
        let definitionVC = segue.destination as? DefinitionViewController
        definitionVC?.vocabWord = vocabWordUsed
        
    }
    
    
    //MARK: - AddItems
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
       
        let alert = UIAlertController(title: "Add new Vocabulary Word", message: "", preferredStyle: .alert)
        
        alert.addTextField()
        alert.addTextField()
        alert.textFields![0].placeholder = "Word"
        alert.textFields![1].placeholder = "Definition"
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { action in
            guard let newWord = alert.textFields?[0].text,
                let newDefinition = alert.textFields?[1].text else { return }
            
            if newWord.count < 1 || newDefinition.count < 1 {
                let noValueAlert = UIAlertController(title: "Whoops...", message: "You have left something empty! We need a name and a definition!", preferredStyle: .alert)
                noValueAlert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(noValueAlert, animated: true)
            } else {
                self.newWordAdded(newWord: newWord, newDefinition: newDefinition)
            }
        }))
        
        present(alert, animated: true)
        }

    func newWordAdded(newWord: String, newDefinition: String) {
        
        let newVocabWord = VocabularyWord(word: newWord, definition: newDefinition)
        vocabWord.append(newVocabWord)
        
        self.tableView.reloadData()
    }
}
    

