//: Playground - noun: a place where people can play

import UIKit

class BoardGameManager{
    static let sharedInstance = BoardGameManager()
    var name : String?
    
    init(){
        print("Singleton initialized")
    }
}


let boardGame = BoardGameManager.sharedInstance
boardGame.name = "Board Game Manager"

let boardGame1 = BoardGameManager.sharedInstance

print(boardGame1.name!)
