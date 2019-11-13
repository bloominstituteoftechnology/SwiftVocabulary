//
//  WordsTableTableViewController.swift
//  Swift Vocabulary
//
//  Created by David Williams on 8/26/19.
//  Copyright © 2019 david williams. All rights reserved.
//

import UIKit

class WordsTableTableViewController: UITableViewController {
    
var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Any named piece of data in your code that may change when your program runs."),
    VocabularyWord(word: "Constant", definition: "Any named piece of data in your code that may not change when your program runs."),
    VocabularyWord(word: "Function", definition: "A named section of your code that performs a specific, reusable task.  You might pass in parameters to the function to customize how it runs, and it might return or or more values that are the result of its work."),
    VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods.  Unlike structs, classes are reference types."),
    VocabularyWord(word: "Raw Value", definition: "A simple underlying data type that enum values can be mapped to for the purpose of loading and saving. For example, you might say that the planets Mercury, Venus and Earth have the integer raw values 1, 2 and 3."),
    VocabularyWord(word: "Optional", definition: "A type that wraps another type, such as String or Int, but adds the ability to store no value at all. \"No Value\" is different from all regular integer values, including zero. Swift uses optionals heavily as a waya of providing runtime safety, and the compiler forces us to use them correctly.")]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
       
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabWords[indexPath.row]
        
        
        cell.textLabel?.text = word.word
       cell.textLabel?.font = .monospacedDigitSystemFont(ofSize: 22, weight: UIFont.Weight(rawValue: 2))
        return cell
    }
   

    

    
    // MARK: - Navigation


   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowDefinitionSegue" {
        guard let definitionVC = segue.destination as? DefinitionViewControllerrViewController,
        let selectedIndexpath = tableView.indexPathForSelectedRow else {
            return }
        definitionVC.vocabularyWord = vocabWords[selectedIndexpath.row]
        
    }
        
       
    }
 

}
