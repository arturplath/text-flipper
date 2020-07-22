//
//  Model.swift
//  text-flipper
//
//  Created by Artur Plath on 21/07/2020.
//  Copyright © 2020 Artur Plath. All rights reserved.
//

import Foundation


class Model {
    
    // Function that replace "normal" characters with upside down characters
    func turnUpsideDown(_ userInput:String) -> String? {
        let userInputArray = Array(userInput)
        var flippedText:[Character] = []
        
        // Stopping function when user try to flip nothing
        if (userInputArray.isEmpty == true) {
            return ""
        }
        
        for i in 0 ... userInputArray.count - 1 {
            let characterFromUserInput = userInputArray[i]
            
            // Checking whether user used character that does not exist in app's dictionary
            if let indexFromUserInput = Constants.normalCharacters.firstIndex(of: characterFromUserInput) {
                            flippedText.append(Constants.flippedCharacters[indexFromUserInput])
            }
            else {
                flippedText.append(contentsOf: "")
            }
        }
        return String(flippedText.reversed())
    }
}
