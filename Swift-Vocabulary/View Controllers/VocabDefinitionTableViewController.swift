//
//  VocabDefinitionTableViewController.swift
//  Swift-Vocabulary
//
//  Created by Austin Potts on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class VocabDefinitionTableViewController: UITableViewController {

    var vocabulary: [MyVocabulary] = [MyVocabulary(name: "Variable", definition: "a variable is a value that can change, depending on conditions or on information passed to the program. Typically, a program consists of instruction s that tell the computer what to do and data that the program uses when it is running."),
                                      MyVocabulary(name: "Constant", definition: "a constant is a value that cannot be altered by the program during normal execution, i.e., the value is constant. ... This is contrasted with a variable, which is an identifier with a value that can be changed during normal execution, i.e., the value is variable."),
                                      MyVocabulary(name: "Function", definition: "a named section of a program that performs a specific task. In this sense, a function is a type of procedure or routine. Some programming languages make a distinction between a function, which returns a value, and a procedure, which performs some operation but does not return a value."),
                                      MyVocabulary(name: "Enum", definition: "An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code."),
                                      MyVocabulary(name: "Struct", definition: "structures are general-purpose, flexible constructs that become the building blocks of your program's code. ... In simple terms, a struct is like a custom data type which provides storage of data using properties with extended functionality using methods."),
                                      MyVocabulary(name: "Version Control", definition: "Helps you manage project source code & collaborate with others using techniques such as Fork, Clone, Commit, Push, Pull")
                                      ]
    
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabulary.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabularyCell", for: indexPath)

        let vocab = vocabulary[indexPath.row]
        
        cell.textLabel?.text = vocab.name

        return cell
    }
    

   

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //Segue identifier for detail view controller ShowDefinitionSegue
        if segue.identifier == "ShowDefinitionSegue" {
           
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let vocabDetailVC = segue.destination as? VocabDefinitionViewController else {return}
            
            let selectedVocab = vocabulary[indexPath.row]
            vocabDetailVC.vocabulary = selectedVocab
            
        }
    }
 

}
