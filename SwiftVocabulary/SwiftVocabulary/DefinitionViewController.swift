//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Thomas Bernard Leonard II on 10/7/19.
//  Copyright © 2019 Thomas Bernard Leonard II. All rights reserved.
//

import UIKit
import AVFoundation

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var definitionTextField: UITextView!
    
    @IBAction func soundy(_ sender: UIButton) {
        var YSBW: AVAudioPlayer?
        
        if let vocabWordChoose = vocabWord {
            if vocabWordChoose.word == "🐻 bear 🐻" {
                
                let path = Bundle.main.path(forResource: "BEAR.wav", ofType:nil)!
                let url = URL(fileURLWithPath: path)
                
                do {
                    YSBW = try AVAudioPlayer(contentsOf: url)
                    YSBW?.play()
                } catch {
                    // couldn't load file :(
                }
            }
        }
    }
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "BG.jpeg")
        backgroundImage.contentMode = UIView.ContentMode.center
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    func updateViews() {
        if let vocabWordChoose = vocabWord {
            self.wordLabel.text = vocabWordChoose.word
            self.definitionTextField.text = vocabWordChoose.definition
        }
    }


    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }


}
