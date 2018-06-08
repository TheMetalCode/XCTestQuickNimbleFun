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
    
    var app : XCUIApplication!
    var personList : PersonListScreen!
    var personDetail : PersonDetailScreen!
    
    override func spec() {
        
        beforeSuite {
            self.app = XCUIApplication()
            self.app.launch()
            self.personList = PersonListScreen(testApp: self.app)
            self.personDetail = PersonDetailScreen(testApp: self.app)
        }
        
        describe("MyLife") {
            it("accesses cell detail") {
                let cellName = self.personList.getPersonCellName(index: 0)
                self.personList.tapPersonCell(index: 0)
                expect(self.personDetail.personName.label).to(equal(cellName))
            }
            
            it("changes person name") {
                self.personList.tapPersonCell(index: 0)
                self.personDetail.appendPersonName(newName: "Kevin Durant")
                self.personDetail.navBar.done.tap()
                expect(self.personList.getPersonCellName(index: 0)).to(contain("Kevin Durant"))
            }
            
            it("adds a person") {
                self.personList.navBar.add.tap()
                self.personDetail.appendPersonName(newName: "Steph Curry")
                self.personDetail.navBar.done.tap()
                expect(self.personList.getPersonCellName(index: 3)).to(contain("Steph Curry"))
            }
        }
    }
}
