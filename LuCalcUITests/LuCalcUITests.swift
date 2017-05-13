//
//  LuCalcUITests.swift
//  LuCalcUITests
//
//  Created by Alex Luckjanov on 5/8/17.
//  Copyright © 2017 Alex Luckjanov. All rights reserved.
//

import XCTest

class PlusOpertaionUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPositiveNumbersPlus() {
        let app = XCUIApplication()
        let firstNumField = app.textFields["First number"]
        let SecondNumField = app.textFields["Second number"]
        firstNumField.tap()
        firstNumField.typeText("5")
        SecondNumField.tap()
        SecondNumField.typeText("8")
        app.buttons["Calculate"].tap()
        let result = app.textFields["Result"].value
        XCTAssertEqual(result as! String, "13.0", "Incorrect 5+8 calculation")
    }
    
}
