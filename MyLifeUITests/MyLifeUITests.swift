//
//  MyLifeUITests.swift
//  MyLifeUITests
//
//  Created by Jason Hagglund on 6/7/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import XCTest
import Quick
import Nimble

class MyLifeUITests: QuickSpec {
    
    override func spec() {
        
        beforeSuite {
            XCUIApplication().launch()
        }
        
        describe("MyLife") {
            it("accesses cell detail") {
                let app = XCUIApplication()
                let firstCell = app.tables.cells["person-cell-0"]
                let cellName = firstCell.label
                firstCell.tap()
                let personDetailName = app.textFields["person-name"].label
                expect(personDetailName).to(equal(cellName))
            }
        }
    }
}
