//
//  WordsDetailViewController.swift
//  Swift Vocabulary
//
//  Created by Marissa Gonzales on 4/13/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class WordsDetailViewController: UIViewController {
    
    
    // Outlets
    @IBOutlet weak var wordLabel: UILabel!

    
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    var words: Vocabulary?
    
    func updateViews() {
//        guard isViewLoaded else { return }
        
        if words != nil {
            
            wordLabel.text = words?.word
            definitionTextView.text = words?.definition
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        }
    }
    

