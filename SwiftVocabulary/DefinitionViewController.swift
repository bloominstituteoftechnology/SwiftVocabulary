//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Karim Boudlal on 9/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet var definitionLabel: UILabel!
    
    @IBOutlet var definitionTextView: UITextView!
    
    var vocabWord: VocabularyWord?{
        
        didSet {
            
            
            updateViews()
            
        }
    }
    func updateViews() {
        
        if let  word = vocabWord?.word, let definition = vocabWord?.definition   {
           
            
            definitionLabel.text = word
            definitionTextView.text = definition
            
           
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
        
        
        

        // Do any additional setup after loading the view.
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
