//
//  AddVocabWordViewController.swift
//  SwiftVocabulary
//
//  Created by Alex Rhodes on 8/11/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class AddVocabWordViewController: UIViewController {
    
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var definitonTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addWordButton: UIButton!
    
    var vocabController: VocabController?
    
    var tableview: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "ADD VOCAB WORD"
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "System Bold", size: 30)

        
    }
    
    @IBAction func addWordButtonPressed(_ sender: UIButton) {
          guard let word = wordTextField.text, let defintion = definitonTextView.text else {return}
        vocabController?.addVocabWord(word: word, definition: defintion)
        tableview?.reloadData()
    }
}
