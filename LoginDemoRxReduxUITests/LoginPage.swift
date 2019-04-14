//
//  LoginPage.swift
//  LoginDemoRxReduxUITests
//
//  This class contains all elements into the Login Page and actions to perform
//
//  Created by Kevin Salgado on 4/14/19.
//  Copyright © 2019 Mounir Dellagi. All rights reserved.
//

import Foundation
import XCTest

//Class to contain all Login XCUIElements and actions
public class LoginPage {
    
    let app = XCUIApplication()
    
    lazy var loginIdTextField = app.textFields["Username"]
    lazy var loginPasswordTextField = app.secureTextFields["Password"]
    lazy var loginPasswordTextFieldNotSecure = app.textFields["Password"]
    lazy var signInBtn = app.buttons["Login"]
    lazy var alertModal = app.alerts["An unowned Error occured"]
    lazy var alertText1 = alertModal.staticTexts["An unowned Error occured"]
    lazy var alertText2 = alertModal.staticTexts["Something went wrong!"]
    lazy var alertBtn = alertModal.buttons["OK"]
    
    func enterUsernameAndPassword(userName:String, userPassword:String){
        //Func to enter username and password in the login screem
        loginIdTextField.tap()
        loginIdTextField.typeText(userName)
        loginPasswordTextField.tap()
        loginPasswordTextField.typeText(userPassword)
        
    }
    
    func clickLoginBtn(){
        //Function to click login
        signInBtn.tap()
    }
    
    func buttonEnable() {
        //Func to validate when login button is Enable
        XCTAssertTrue(signInBtn.isEnabled, "Button is not Enable")
        XCTAssertTrue(signInBtn.isHittable, "Button is not Hittable")
    }
    
    func buttonDisable() {
        //Func to validate when login button is Disable
        XCTAssertFalse(signInBtn.isEnabled, "Button is not disable")
    }
    
    func alertDisplayed() {
        //Validate alert displayed when user enter wrong credentials into Login Screen
        XCTAssertTrue(alertModal.waitForExistence(timeout: 1), "Alert is not displayed")
        XCTAssertTrue(alertBtn.waitForExistence(timeout: 1), "OK button is not displayed")
    }
    
}


