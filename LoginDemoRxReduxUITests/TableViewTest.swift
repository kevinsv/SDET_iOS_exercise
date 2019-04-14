//
//  TableViewTest.swift
//  LoginDemoRxReduxUITests
//
//  Created by Kevin Salgado on 4/14/19.
//  Copyright © 2019 Mounir Dellagi. All rights reserved.
//

import XCTest
//Class to contains all Table View XCUIelements and actions
class TableViewTest : XCTestCase{
    
    let app = XCUIApplication()
    
    override func setUp() {
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        super.setUp()
        continueAfterFailure = true
        app.launch()
        
    }
    
    override func tearDown() {
        //Call Teardown
        super.tearDown()
    }
    
    //Instance to Screen Pages
    let loginPage = LoginPage();
    let tableViewPage = TableViewPage()
    
    
    func testValidateHeader(){
        //Test to validate header is displayed
        loginPage.enterUsernameAndPassword(userName:"TestUser", userPassword:"TestPassword")
        loginPage.buttonEnable()
        loginPage.clickLoginBtn()
        tableViewPage.headerExists()
        
    }
    
    func testValidaRefreshButton(){
        //Test to validate refresh button
        loginPage.enterUsernameAndPassword(userName:"TestUser", userPassword:"TestPassword")
        loginPage.buttonEnable()
        loginPage.clickLoginBtn()
        tableViewPage.clickRefresh()
        
    }
    
}

