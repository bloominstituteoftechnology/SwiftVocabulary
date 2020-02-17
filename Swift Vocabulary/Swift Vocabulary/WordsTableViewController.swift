//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Bradley Diroff on 2/17/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    @IBOutlet var wordTableView: UITableView!
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. The value can be changed."), VocabularyWord(word: "Constant", definition: "A named value used to store information. The value cannot be changed."), VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task.")]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addVocabWords))
 
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @objc func addVocabWords(sender: UIBarButtonItem) {
        
        let ac = UIAlertController(title: "Add a new definition", message: "Put the vocabulary word on the first line, and the definition on the second.", preferredStyle: .alert)
         ac.addTextField { (vocWord) in
             vocWord.text = ""
             vocWord.placeholder = "Vocab Word:"
         }
         ac.addTextField { (vocDefinition) in
             vocDefinition.text = ""
             vocDefinition.placeholder = "Vocab Definition:"
         }
         
        ac.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak ac] (_) in
             
             guard let wordField = ac?.textFields?[0].text, let definitionField = ac?.textFields?[1].text else {return}
             
             let vocabFull = VocabularyWord(word: wordField, definition: definitionField)
        self.vocabWords.append(vocabFull)
        self.wordTableView.reloadData()
         }))
        
        self.present(ac, animated: true)
    
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let word = vocabWords[indexPath.row]
        cell.textLabel?.text = word.word
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
             
             guard let indexPath = tableView.indexPathForSelectedRow else {return}
             
             let word = vocabWords[indexPath.row]
             
             let definitionVC = segue.destination as? DefinitionViewController
            
            definitionVC?.vocabWord = word
        }
    }
    

}
