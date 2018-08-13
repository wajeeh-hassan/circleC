//
//  Car.swift
//  unitTest
//
//  Created by Sajjad on 8/9/18.
//  Copyright © 2018 Sajjad. All rights reserved.
//

import UIKit


class Car {
    
    
    var Owner: String?
    
    
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    init(type:CarType, transmissionMode:CarTransmissionMode){
        self.type = type
        self.transmissionMode = transmissionMode
    }
    func start(minutes: Int) {
        var speed = 0
        if self.type == .Economy && self.transmissionMode == .Drive {
            speed = 35
        }
        if self.type == .OffRoad && self.transmissionMode == .Drive {
            speed = 50
        }
        if self.type == .Sport && self.transmissionMode == .Drive {
            speed = 70
        }
        self.miles = speed * (minutes / 60)
    }
    
    
    
    func setOwner(name: String)  {
        self.Owner = name
    }
    func geOwner() -> String {
        return self.Owner!
    }
    
    
    
}


enum CarType {
    case Economy
    case OffRoad
    case Sport
}
enum CarTransmissionMode {
    case Park
    case Reverse
    case Neutral
    case Drive
}
