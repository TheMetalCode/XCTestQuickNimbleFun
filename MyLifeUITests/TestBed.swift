////
////  TestBed.swift
////  MyLifeUITests
////
////  Created by Jason Hagglund on 6/7/18.
////  Copyright © 2018 Apple Inc. All rights reserved.
////
//
//import XCTest
//
//class TestBed: XCTestCase {
//        
//    override func setUp() {
//        super.setUp()
//        
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//        
//        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false
//        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
//        XCUIApplication().launch()
//
//        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // Use recording to get started writing UI tests.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        
//        
//        let app = XCUIApplication()
//        let tablesQuery = app.tables
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Byte"]/*[[".cells[\"person-cell-0\"].staticTexts[\"Byte\"]",".staticTexts[\"Byte\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        tablesQuery.cells.containing(.button, identifier:"Sample1").children(matching: .textField).element.tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["👎"]/*[[".cells.staticTexts[\"👎\"]",".staticTexts[\"👎\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["👍"]/*[[".cells.staticTexts[\"👍\"]",".staticTexts[\"👍\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Sample1"]/*[[".cells.buttons[\"Sample1\"]",".buttons[\"Sample1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.navigationBars["My Life"].buttons["Done"].tap()
//        
//        
//    }
//    
//}
