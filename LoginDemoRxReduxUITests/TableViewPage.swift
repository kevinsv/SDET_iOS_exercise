//
//  TableViewPage.swift
//  LoginDemoRxReduxUITests
//
//  This class contains all elements into the Table Result Page and actions to perform
//
//  Created by Kevin Salgado on 4/14/19.
//  Copyright © 2019 Mounir Dellagi. All rights reserved.
//

import Foundation
import XCTest

//Table Page Screen
public class TableViewPage {
    
    let app = XCUIApplication()
    
    lazy var refreshBtn = app.buttons["Refresh"]
    lazy var header = app.navigationBars["Rx TableView Example"]
    
    func clickRefresh(){
        //Click Refresh button
        XCTAssertTrue(refreshBtn.waitForExistence(timeout: 1), "Button is not displayed")
        refreshBtn.tap()
    }
    
    func headerExists() {
        //Validate Header exists in Screen
        XCTAssertTrue(header.waitForExistence(timeout: 1), "Header is not displayed")
    }
    
    
    
}


