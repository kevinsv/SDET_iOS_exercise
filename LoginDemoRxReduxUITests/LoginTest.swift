//
//  LoginTest.swift
//  LoginDemoRxReduxUITests
//
//  Created by Kevin Salgado on 4/10/19.
//  Copyright © 2019 Mounir Dellagi. All rights reserved.
//

import XCTest

class LoginTest : XCTestCase{
    
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
    
    func testValidloginCredentials(){
        //Test to validate user is able to login using valid credentials
        let loginPage = LoginPage();
        
        loginPage.enterUsernameAndPassword(userName:"TestUser", userPassword:"TestPassword")
        loginPage.buttonEnable()
        loginPage.clickLoginBtn()
        
        let tableViewPage = TableViewPage()
        
        tableViewPage.headerExists()
        
        }
    
    func testInvalidloginCredentials(){
        //Test to validate user is able to login using invalid credentials
        let loginPage = LoginPage()
        loginPage.enterUsernameAndPassword(userName:"TestUser2", userPassword:"TestPassword2")
        loginPage.buttonEnable()
        loginPage.clickLoginBtn()
        loginPage.alertDisplayed()
    
    }
    
    func testButtonEnable(){
        //Test to validate when login button is enanble
        let loginPage = LoginPage()
        loginPage.enterUsernameAndPassword(userName:"TestUser", userPassword:"TestPassword")
        loginPage.buttonEnable()
        
    }
    
    func testButtonDisable(){
        //Test to validate when login button is disable
        let loginPage = LoginPage()
        loginPage.enterUsernameAndPassword(userName:"Test", userPassword:"Test")
        loginPage.buttonDisable()
    }
    
    func testValidateMinUserNameValue(){
        //Test to validate Min values that user can enter into UserName to make button disable
        //Max password length vs min username lenght
        let loginPage = LoginPage()
        loginPage.enterUsernameAndPassword(userName:"12345", userPassword:"12345678")
        loginPage.buttonDisable()
    }
    
    func testValidateMinPasswordValue(){
        //Test to validate min values that user can enter into Password Field to make button disable
        // Max username length vs min password lenght
        app.launch()
        
        let loginPage = LoginPage()
        loginPage.enterUsernameAndPassword(userName:"123456", userPassword:"1234567")
        loginPage.buttonDisable()
    }    
    
}
