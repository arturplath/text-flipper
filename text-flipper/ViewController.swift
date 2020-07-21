//
//  ViewController.swift
//  text-flipper
//
//  Created by Artur Plath on 20/07/2020.
//  Copyright © 2020 Artur Plath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var normal = Array(" abcdefghijklmnopqrstuvwxyz_,;.?!/\\'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
        var flipped  = Array(" ɐqɔpǝɟbɥıظʞןɯuodbɹsʇnʌʍxʎz‾'؛˙¿¡/\\,∀qϽᗡƎℲƃHIſʞ˥WNOԀὉᴚS⊥∩ΛMXʎZ0ƖᄅƐㄣϛ9ㄥ86")

        var str = Array("Hello World!")
        var strArray = Array(str)
        var flippedString = ""
        
        for i in 0...str.count - 1 {
            var letter = strArray[i]
            var index = normal.firstIndex(of: letter)!
                
            flippedString += String(flipped[index])
        }
        
        label.text = String(flippedString.reversed())
  
        }
   
}
