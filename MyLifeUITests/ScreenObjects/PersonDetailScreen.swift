//
//  PersonDetailScreen.swift
//  MyLifeUITests
//
//  Created by Jason Hagglund on 6/7/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation
import XCTest

class PersonDetailScreen {
    
    var app : XCUIApplication!
    var navBar : TopNavBar!
    var personName : XCUIElement!
    
    init(testApp: XCUIApplication) {
        app = testApp
        navBar = TopNavBar(testApp: app)
        personName = app.tables.textFields["person-name"]
    }
    
    func appendPersonName(newName: String) {
        personName.tap()
        personName.typeText(newName)
    }
}
