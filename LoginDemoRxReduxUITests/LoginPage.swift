//
//  LoginPage.swift
//  LoginDemoRxReduxUITests
//
//  This class contains all elements into the Login Page and actions to perform
//
//  Created by Kevin Salgado on 4/10/19.
//  Copyright © 2019 Mounir Dellagi. All rights reserved.
//

import Foundation
import XCTest


 public class LoginPage {
    
      let app = XCUIApplication()
    
     lazy var loginIdTextField = app.textFields["Username"]
     lazy var loginPasswordTextField = app.secureTextFields["Password"]
     lazy var signInBtn = app.buttons["Login"]
     lazy var alertModal = app.alerts["An unowned Error occured"]
     lazy var alertText1 = alertModal.staticTexts["An unowned Error occured"]
     lazy var alertText2 = alertModal.staticTexts["Something went wrong!"]
     lazy var alertBtn = alertModal.buttons["OK"]
    
    func enterUsernameAndPassword(userName:String, userPassword:String){
        
        loginIdTextField.tap()
        loginIdTextField.typeText(userName)
        loginPasswordTextField.tap()
        loginPasswordTextField.typeText(userPassword)
        
    }
    
    func clickLoginBtn(){
        signInBtn.tap()
    }
    
    func buttonEnable() {
        XCTAssertTrue(signInBtn.isEnabled, "Button is not Enable")
        XCTAssertTrue(signInBtn.isHittable, "Button is not Hittable")
    }
    
    func buttonDisable() {
        XCTAssertFalse(signInBtn.isEnabled, "Button is not disable")
    }
    
    func alertDisplayed() {
        XCTAssertTrue(alertModal.waitForExistence(timeout: 1), "Alert is not displayed")
        XCTAssertTrue(alertBtn.waitForExistence(timeout: 1), "OK button is not displayed")
    }
}


