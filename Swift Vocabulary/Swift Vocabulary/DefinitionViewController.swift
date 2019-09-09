//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gi Pyo Kim on 9/9/19.
//  Copyright © 2019 GIPGIP Studio. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var outputLabelWord: UILabel!
    @IBOutlet weak var outputLabelDefinition: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateViews()
        
    }
    
    func updateViews() {
        guard let vocab = vocabWord else {
            print("func updateViews :: vocab unable to unwrap")
            return}
        outputLabelWord.text = vocab.word
        outputLabelDefinition.text = vocab.definition
        outputLabelDefinition.numberOfLines = 0
        outputLabelDefinition.sizeToFit()
    }

}
