//
//  VocabDetailsVC.swift
//  SwiftVocabulary
//
//  Created by Jeffrey Santana on 7/15/19.
//  Copyright © 2019 Jefffrey Santana. All rights reserved.
//

import UIKit

class VocabDetailsVC: UIViewController {
	
	@IBOutlet weak var titleLbl: UILabel!
	@IBOutlet weak var definitionTextField: UITextField!
	@IBOutlet weak var tagsLbl: UILabel!
	
	var selectedWord: Word?

    override func viewDidLoad() {
        super.viewDidLoad()

        configDetails()
    }
	
	private func configDetails() {
		if let word = selectedWord {
			titleLbl.text = word.title
			definitionTextField.text = word.definition
			tagsLbl.text = configTags()
		}
	}
	
	private func configTags() -> String? {
		guard let tags = selectedWord?.tags?.joined(separator: ", #") else {return nil}
		
		return "#\(tags)"
	}
}
