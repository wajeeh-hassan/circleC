//
//  unitTestTests.swift
//  unitTestTests
//
//  Created by Sajjad on 8/9/18.
//  Copyright © 2018 Sajjad. All rights reserved.
//

import XCTest
@testable import unitTest

class unitTestTests: XCTestCase {
    
    
    var ferrari:Car!
    var jeep:Car!
    var honda:Car!
    
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.setOwner(name: "wajeeh")
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
        
        
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
        
        
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    
    func testSportFasterThanJeep() {
        let minutes = 60
        //1 start ferrari
        ferrari.start(minutes: minutes)
        //2 start jeep
        jeep.start(minutes: minutes)
        //Test it
        // XCTAssertTrue(ferrari.miles > jeep.miles)
        
        XCTAssertTrue(ferrari.geOwner() == "wajeeh")
        
        
    }
    
    
    
    
    
}
