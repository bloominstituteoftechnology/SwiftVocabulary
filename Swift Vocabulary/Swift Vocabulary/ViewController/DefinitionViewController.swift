//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Percy Ngan on 8/12/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

	var vocabWord: VocabularyWord?

	

	
	@IBOutlet weak var Label: UILabel!
	@IBOutlet weak var TextField: UITextView!
	

	override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
    }
    

	func updateViews( ) {
		if let vocabWord = vocabWord {
			Label.text = vocabWord.word
			TextField.text = vocabWord.definition
		}
	}


}
