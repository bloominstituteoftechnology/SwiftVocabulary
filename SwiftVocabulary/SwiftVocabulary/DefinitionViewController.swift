//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Taylor Lyles on 7/15/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
	
	var vocabWord: VocabularyWord?

	@IBOutlet weak var definitionLabel: UILabel!
	@IBOutlet weak var definitionTextView: UITextView!

	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		updateViews()

        // Do any additional setup after loading the view.
    }
	
	func updateViews() {
		if let vocabWord = vocabWord {
			definitionLabel.text = vocabWord.word
			definitionTextView.text = vocabWord.definition
			
		}
	}
	
}
