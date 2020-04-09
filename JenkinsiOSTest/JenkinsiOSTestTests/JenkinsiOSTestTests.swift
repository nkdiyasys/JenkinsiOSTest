//
//  JenkinsiOSTestTests.swift
//  JenkinsiOSTestTests
//
//  Created by Nithin Kumar on 4/9/20.
//  Copyright © 2020 Diya Systems. All rights reserved.
//

import XCTest
@testable import JenkinsiOSTest

class JenkinsiOSTestTests: XCTestCase {
    var vc : ViewController!
    
    override func setUp() {
        vc = ViewController()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testAdd(){
        let a = 10
        let b = 50
        let sum = a + b
        XCTAssertTrue(sum == 60, "sum")
    }
    
    func testCheck_EmailIsValid(){
        let email = "test@gmail.com"
        let isValid = vc.isValidEmail(email: email)
        XCTAssertTrue(isValid, "Email is Valid")
        
    }
    
    func testCheck_EmailNotValid(){
        let email = "test"
        let isNotValid = vc.isValidEmail(email: email)
        XCTAssertFalse(isNotValid, "Email is Not Valid")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
