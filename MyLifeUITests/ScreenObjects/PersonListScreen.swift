//
//  PersonListScreen.swift
//  MyLifeUITests
//
//  Created by Jason Hagglund on 6/7/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation
import XCTest

class PersonListScreen {
    
    var app : XCUIApplication!
    var navBar : TopNavBar!
    
    init(testApp: XCUIApplication) {
        app = testApp
        navBar = TopNavBar(testApp: app)
    }
    
    func getPersonCellName(index: Int) -> String {
        return app.tables.cells["person-cell-\(index)"].label
    }
    
    func tapPersonCell(index: Int) {
        app.tables.cells["person-cell-\(index)"].tap()
    }
}
