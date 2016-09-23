## Singleton pattern in Swift
  This pattern ensure that a class has only one instance. This class provides a unique point of access and returns this instance
  
## Implementation
  * Create *Singleton* class
  
```swift
class BoardGameManager{
    static let sharedInstance = BoardGameManager()
    var name : String?
    
    init(){
        print("Singleton initialized")
    }
}
```
 The singleton class provides a method to return only on instance of class. It use the mechanism to lock the creation of other
 instance and it was introduced in Swift 1.2, we will use a class constants to ensure the unique creation of the instance.


  A class constant is defined as follows: 
```swift
    static let sharedInstance = BoardGameManager()
```

## Usage
  *Create first instance:*
```swift
    let boardGame = BoardGameManager.sharedInstance
    boardGame.name = "Board Game Manager"
```

 *Create seconde instance:*
 ```swift
    let boardGame1 = BoardGameManager.sharedInstance
```

*Check value:*
 ```swift
    print(boardGame1.name!)
```

With the value is printed, you see that the name of second object was not assigned but It still have value the same as the first instance.(**Actually both of them refer to only one instance**)
