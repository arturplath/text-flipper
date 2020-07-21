//
//  ViewController.swift
//  text-flipper
//
//  Created by Artur Plath on 20/07/2020.
//  Copyright © 2020 Artur Plath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userInputTextView: UITextView!
    
    
    @IBOutlet weak var outputTextView: UITextView!
    
    
    @IBAction func flipButton(_ sender: Any) {
        let model = Model()
        let userInput = userInputTextView.text!
        outputTextView.text = model.turnUpsideDown(userInput)
    }
    
    
    @IBAction func copyToClipboardButton(_ sender: Any) {
        let pasteboard = UIPasteboard.general
        pasteboard.string = outputTextView.text!
    }
    
    @IBAction func shareButton(_ sender: Any) {
        let items = [outputTextView.text!]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    }
}
