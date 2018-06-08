//
//  TopNavBar.swift
//  MyLifeUITests
//
//  Created by Jason Hagglund on 6/8/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import Foundation
import XCTest

class TopNavBar {
    
    var app : XCUIApplication!
    var navBar : XCUIElement!
    var done : XCUIElement!
    var cancel : XCUIElement!
    var add : XCUIElement!
    
    init(testApp: XCUIApplication) {
        app = testApp
        navBar = app.navigationBars["My Life"]
        done = navBar.buttons["Done"]
        cancel = navBar.buttons["Cancel"]
        add = navBar.buttons["Add"]
    }
}
