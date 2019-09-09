//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by macbook on 9/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class WordsTableViewController: UITableViewController {
    
    // MARK: - Vocabulary Array
    
    // Array of VocabularyWord struct
    var vocabWord: [VocabularyWord] = [
        VocabularyWord(word: "Variable", definition: """
Variables are named values. You use the ' var ' keyword to declare a variable, and you can change it's value over time as long as it remains being of the same data type.

Ex:
    var age = 27
"""),
        VocabularyWord(word: "Constant", definition: """
Constants, like variables, are also named values. But for a constant you use the ' let ' keyword to declare it.
Unlike a variable, a constant once declared, it can never be changed. This comes in handy when declaring a value that you absolutly need to make sure it never gets changed or modified later througt your program.

Ex:
    let name = "Wilma"
"""),
        VocabularyWord(word: "String", definition: """
It's a data type. A list of characters in order, surrounded by double quotes (not single quotes). It can be a word, a sentence, paragraph, etc.. Any text.

Ex:
    var intro = "My name is Wilma and I love to code!"

In Swift, regular string literals need to be all in one line
"""),
        VocabularyWord(word: "Interger", definition: """
A data type. They can be positive or negative numbers, but consist of only whole number. Which means it can never be a decilmal. It will always round up its results.

Ex:
    let x = 2
"""),
        VocabularyWord(word: "Basic Math Operators", definition: """
+   -   *   /   %

You can write arithmetic expressions using numbers, variables, operators and parentheses. Addition, subtraction and multiplication behave pretty much as you expect. The tricky operations are division and remainder.

Depending on the data type of the values, the result of a division will round up the result to continue being of the same data type, or include the numbers after the decimal point (to continue being of the same data type).
The remainder operator or modulo operator (%) is used to get the remainder of an integer division.

Ex:
    5 % 2 = 1
"""),
        VocabularyWord(word: "Modulo", definition: """
It captures the remainder of a division, rather then the result.
It's represented by the percent ( % ) sign.

Ex:
    sum = 5 % 2

    sum will result in 1, because 2 goes into 5 twice, with a remeinder of 1
"""),
        VocabularyWord(word: "For-in Loop", definition: """
Allows a block of code to be executed once for each item in a collection of items, like an array or in a dictionary.

For-in statement syntax:

    for item in collection {
        statements
    }

"""),
    ]

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    // Number of Sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of Rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWord.count
    }

    // Dequeue Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = vocabWord[indexPath.row].word
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let indexPath = tableView.indexPathForSelectedRow,
            let definitionVC = segue.destination as? DefinitionViewController else { return }
        
        definitionVC.vocabWord = vocabWord[indexPath.row]
    }
}
