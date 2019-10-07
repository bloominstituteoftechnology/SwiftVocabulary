//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Niranjan Kumar on 10/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var definition: UITextView!
    
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

    }
    
    func updateViews() {
  
        guard let vocabWord = vocabWord else { return }
        
        
        
    }
    
    
}
