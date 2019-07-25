//
//  VocabTableViewController.swift
//  SwiftVocabulary
//
//  Created by Aaron on 7/23/19.
//  Copyright © 2019 AlphaGrade, INC. All rights reserved.
//

import UIKit

class VocabTableViewController: UITableViewController {
    
    
    
    var vocabWords: [VocabularyWord] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    vocabWords.append(constant)
    vocabWords.append(variable)
    vocabWords.append(function)
    
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
        let vocabCell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocab = vocabWords[indexPath.row]
        
        vocabCell.textLabel?.text = vocab.name
        
        return vocabCell
    }


 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow, let vc = segue.destination as? VocabDetailViewController else { return }
            let vocabCells = vocabWords[indexPath.row]
            vc.vocabWord = vocabCells
            
        }
        
        
    }
    
    private func addVocabItem(word: String, definition: String) {
        
        let newWord = VocabularyWord(name: word, definition: definition)
        vocabWords.append(newWord)
        tableView.reloadData()
    }
    
    //TODO: - UIAlert to add more data into app
    @IBAction func addVocabButtonPressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "New Vocabulary Item", message: nil, preferredStyle: .alert)
        alert.addTextField()
        alert.addTextField()
      
        let addWordAction = UIAlertAction(title: "Add Word", style: .default) { action in
            guard let word = alert.textFields?[0].text,
            let definition = alert.textFields?[1].text
                else { return }
            self.addVocabItem(word: word, definition: definition)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
       
        alert.addAction(addWordAction)
         alert.addAction(cancelAction)
        
        present(alert, animated: true)
        
        
    }
    
 

}
