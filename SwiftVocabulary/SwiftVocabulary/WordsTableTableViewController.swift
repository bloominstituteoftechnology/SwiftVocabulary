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
        // #warning Incomplete implementation, return the number of rows
        return vocabWord.count
    }
    
    
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
        
        var textfieldForName = UITextField()
        var newWord : [VocabularyWord] = []
        
        let alert = UIAlertController(title: "Add new Vocabulary Word", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
//            self.vocabWord.append()
        }
        
        
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "create name for word"
            textfieldForName = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}
