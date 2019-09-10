//
//  VocabDetailViewController.swift
//  SwiftVocabulary
//
//  Created by Davit Hovsepyan on 9/9/19.
//  Copyright © 2019 Davit Hovsepyan. All rights reserved.
//

import UIKit

class VocabDetailViewController: UIViewController {
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitonTextView: UITextView!
    
    var vocabController: VocabController?
    
    var vocabWord: VocabWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setViews()
    }
    
    func setViews() {
        guard let vocabWordSelected = vocabWord else {return}
        wordLabel.text = vocabWordSelected.word
        definitonTextView.text = vocabWordSelected.definition
        
        wordLabel.textColor = .black
        wordLabel.font = UIFont(name: "System Bold", size: 30)
        
        
    }
}
