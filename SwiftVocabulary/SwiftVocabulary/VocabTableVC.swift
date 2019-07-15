//
//  VocabTableVC.swift
//  SwiftVocabulary
//
//  Created by Jeffrey Santana on 7/15/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import UIKit

class VocabTableVC: UITableViewController {
	
	var vocabulary = [
		Word(title: "Variable", definition: "A value that can change after it’s been initialized, indicated in Swift by the var keyword.", tags: ["basic"]),
		Word(title: "Constamt", definition: "A value that’s initialized once and cannot change, indicated in Swift by the let keyword.", tags: ["basic"]),
		Word(title: "Function", definition: "A reusable, named piece of code that can be referred to from many places in a program.", tags: ["basic"])
	]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return vocabulary.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "VocabCell", for: indexPath)
		let word = vocabulary[indexPath.row]
		
		cell.textLabel?.text = word.title
		
		return cell
	}
	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let indexPath = tableView.indexPathForSelectedRow else { return }
		if let vocabDetailsVC = segue.destination as? VocabDetailsVC {
			vocabDetailsVC.selectedWord = vocabulary[indexPath.row]
		}
    }

}
