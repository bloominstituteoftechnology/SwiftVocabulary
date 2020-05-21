//
//  WordsTableTableViewController.swift
//  SwiftVocabulary
//
//  Created by John McCants on 5/17/20.
//  Copyright © 2020 John McCants. All rights reserved.
//

import UIKit



class WordsTableViewController: UITableViewController {
    
     var vocabWords : [VocabularyWord] = [VocabularyWord(word: "run", definition: "runn"), VocabularyWord(word: "yo", definition: "yoo whats up this is a really long definition. but not really."), VocabularyWord(word: "Two", definition: "Two is a number.")]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        

        print(vocabWords)
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = self.vocabWords[indexPath.row].word
        
    
        return cell
    }
    
    
//    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "ShowDefinitionSegue" {

            guard let destinationVC = segue.destination as? DefinitionViewController else {

                return }

            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            let word = vocabWords[indexPath.row]
            destinationVC.vocabWord = word
            
//            self.navigationController?.popToRootViewController(animated: true)

        }


        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
        @IBAction func unwindFromDetail (segue: UIStoryboardSegue) {

    //        if segue.source is AddNewWordViewController {
                if let senderVC = segue.source as? AddNewWordViewController {
    //                senderVC.performSegue(withIdentifier: "unwind", sender: nil)

                    
                    if let newWord = senderVC.addWordTextField.text, let newDefinition = senderVC.addDefintionTextField.text {
                        
                        if newWord == "" || newDefinition == "" {
                        } else {
                            vocabWords.append(VocabularyWord(word: newWord, definition: newDefinition))
                        }
                        
                    
                                }
                    tableView.reloadData()
                }
                
            
        }
    

    

}
