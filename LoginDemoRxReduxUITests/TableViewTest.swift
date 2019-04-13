//
//  TableViewTest.swift
//  LoginDemoRxReduxUITests
//
//  Created by Kevin Salgado on 4/13/19.
//  Copyright © 2019 Mounir Dellagi. All rights reserved.
//

import XCTest

class TableViewTest : XCTestCase{
    
    let app = XCUIApplication()
    
    override func setUp() {
        
        super.setUp()
        continueAfterFailure = true
        app.launch()
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    }
    
    override func tearDown() {
        //Call Teardown of BaseTest
        super.tearDown()
    }
    
    let loginPage = LoginPage();
    let tableViewPage = TableViewPage()
    
    
    func testValidateHeader(){
        //Test to validate user is able to login using valid credentials
        let loginPage = LoginPage();
        
        loginPage.enterUsernameAndPassword(userName:"TestUser", userPassword:"TestPassword")
        loginPage.buttonEnable()
        loginPage.clickLoginBtn()
        tableViewPage.headerExists()
        
}
    
    func testValidaRefreshButton(){
        //Test to validate user is able to login using valid credentials
        let loginPage = LoginPage();
        
        loginPage.enterUsernameAndPassword(userName:"TestUser", userPassword:"TestPassword")
        loginPage.buttonEnable()
        loginPage.clickLoginBtn()
        tableViewPage.clickRefresh()
        
    }
    
}

