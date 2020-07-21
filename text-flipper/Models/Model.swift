//
//  Model.swift
//  text-flipper
//
//  Created by Artur Plath on 21/07/2020.
//  Copyright © 2020 Artur Plath. All rights reserved.
//

import Foundation


class Model {
    
    func turnUpsideDown(_ userInput:String) -> String? {
        let userInputArray = Array(userInput)
        var flippedText:[Character] = []
        
        for i in 0 ... userInputArray.count - 1 {
            let characterFromUserInput = userInputArray[i]
            let indexFromUserInput = Constants.normalCharacters.firstIndex(of: characterFromUserInput)!
            
            
            flippedText.append(Constants.flippedCharacters[indexFromUserInput])

        }
        return String(flippedText.reversed())
    }
}
