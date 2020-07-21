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
        var model = Model()
        var userInput = userInputTextView.text!
        outputTextView.text = model.turnUpsideDown(userInput)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
}
