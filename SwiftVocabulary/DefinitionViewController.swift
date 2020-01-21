//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by scott harris on 1/20/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var WordLabel: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let word = vocabWord else { return }
        
        WordLabel.text = word.word
        DefinitionTextView.text = word.definition
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
