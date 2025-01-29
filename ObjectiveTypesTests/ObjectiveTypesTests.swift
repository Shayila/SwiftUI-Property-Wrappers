//
//  ObjectiveTypesTests.swift
//  ObjectiveTypesTests
//
//  Created by Aiysha on 22/01/25.
//

import XCTest
import SwiftUI
@testable import ObjectiveTypes

final class ObjectiveTypesTests: XCTestCase {
    private var app = XCUIApplication()
    var menuArray = ["State","State Object","Binding","Observable Object","Environmental Object"]
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        try super.setUpWithError()
                
        app = XCUIApplication(bundleIdentifier: "com.customeranalytics.TheHub")
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        //app = nil
        
        try super.tearDownWithError()
        app.terminate()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        let welcome = app.staticTexts.element
        XCTAssert(welcome.exists)
        /*["State","State Object","Binding","Observable Object","Environmental Object"]*/
        
       // XCTAssertEqual(welcome.label, menuArray[0])
        //XCTAssertTrue(welcome.label == menuArray[0])
        
       // XCTAssertEqual(welcome., "Welcome!")
        
    }

    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
