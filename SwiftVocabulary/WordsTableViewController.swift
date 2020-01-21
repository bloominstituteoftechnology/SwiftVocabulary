//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by scott harris on 1/20/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    let vocab1 = VocabularyWord(word: "Variable", definition: "In computer programming, a variable or scalar is a storage address (identified by a memory address) paired with an associated symbolic name, which contains some known or unknown quantity of information referred to as a value. The variable name is the usual way to reference the stored value, in addition to referring to the variable itself, depending on the context. This separation of name and content allows the name to be used independently of the exact information it represents. The identifier in computer source code can be bound to a value during run time, and the value of the variable may thus change during the course of program execution")
    
    let vocab2 = VocabularyWord(word: "Function", definition: "In programming, a named section of a program that performs a specific task. In this sense, a function is a type of procedure or routine. Some programming languages make a distinction between a function, which returns a value, and a procedure, which performs some operation but does not return a value")
    
    let vocab3 = VocabularyWord(word: "Constant", definition: "In computer programming, a constant is a value that cannot be altered by the program during normal execution, i.e., the value is constant.[a] When associated with an identifier, a constant is said to be named, although the terms constant and named constant are often used interchangeably. This is contrasted with a variable, which is an identifier with a value that can be changed during normal execution, i.e., the value is variable. Constants are useful for both programmers and compilers: For programmers they are a form of self-documenting code and allow reasoning about correctness, while for compilers they allow compile-time and run-time checks that verify that constancy assumptions are not violated, and allow or simplify some compiler optimizations")
    
    var vocabWords: [VocabularyWord] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vocabWords.append(vocab1)
        vocabWords.append(vocab2)
        vocabWords.append(vocab3)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let currentWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = currentWord.word

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
            if let destinationSegue = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                let vocabWord = vocabWords[indexPath.row]
                
                destinationSegue.vocabWord = vocabWord
                
            }
        }
    }

}
