//: Tarea 1

import UIKit


var rango = 0...100

for i in rango {
    if (i%5) == 5 {
        print ("\(i) Bingo!!!")
    }
    
    if (i%2) == 0 {
        print ("\(i) par!!!")
    }
    else {
        print ("\(i) impar!!!")
    }
    
    if i >= 30 && i <= 40 {
        print ("\(i) Viva Swift!!!")
    }
    
}
