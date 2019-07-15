//
//  FlashCardDetailViewController.swift
//  SwiftFlashCards
//
//  Created by brian vilchez on 7/15/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import UIKit

class FlashCardDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        flashCardDefinitionTextView.text = ""
        updateViews()
        
    }
    
    func updateViews() {
       if let flashCard = flashCard {
        title = flashCard.name
        flashCardDefinitionTextView.text = flashCard.definition
        }
    }
    
    @IBOutlet weak var flashCardDefinitionTextView: UITextView!
    
    var flashCard: Word?
}
