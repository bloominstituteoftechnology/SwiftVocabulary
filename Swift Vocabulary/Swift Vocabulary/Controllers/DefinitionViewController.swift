//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Nick Nguyen on 1/18/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

// Can't save the data. Need to learn Core Data . I managed to save data for one new row using UserDefault.

import UIKit

class DefinitionViewController: UIViewController ,UITextViewDelegate {
    
    var userDefault = UserDefaults()
    
    @IBOutlet weak var addButton: UIButton!
    var vocabWord : VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var meaningTextView: UITextView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
          updateView()
         meaningTextView.delegate = self
        switch meaningTextView.text {
        case "Enter definition here...":
            meaningTextView.text = userDefault.string(forKey: "Text")
        default:
            break
        }
    }
    
  
    func updateView() {
          if let unwrapped = vocabWord
        {
            wordLabel.text = unwrapped.word
            meaningTextView.text = unwrapped.definition
            
        }
        
    }
    
    func textViewDidChange(_ textView: UITextView) {
      addButton.isHidden = false
        textView.backgroundColor = .link
        textView.textColor = .white
    }
  
    @IBAction func addTapped(_ sender: UIButton) {
        let vc = UIAlertController(title: nil, message: "Added.", preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "OK", style: .destructive, handler: okAction))
         meaningTextView.backgroundColor = UIColor.white
        present(vc, animated: true, completion: nil)
    }
    
   
    @IBAction func saveTapped(_ sender: UIButton) {
        meaningTextView.backgroundColor = .white
        meaningTextView.textColor = .black
       
    }
    
    func okAction (action: UIAlertAction) {
      
         userDefault.set(meaningTextView.text, forKey: "Text")
       
    }
}

