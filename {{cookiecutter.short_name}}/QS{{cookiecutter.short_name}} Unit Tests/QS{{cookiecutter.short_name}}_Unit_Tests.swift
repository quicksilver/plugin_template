//
//  QS{{cookiecutter.short_name}}_Unit_Tests.swift
//  QS{{cookiecutter.short_name}} Unit Tests
//
//  Created by Nathan Henrie on 2022-09-11.
//  Copyright © 2022 Quicksilver. All rights reserved.
//

import XCTest

import QS{{cookiecutter.short_name}}

class QS{{cookiecutter.short_name}}_Unit_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let action = QS{{cookiecutter.short_name}}SwiftAction()
        let result = action.performSwiftActionOnObject(QSObject(string:"example input")!)
        XCTAssertEqual(result, QSObject(string:"here it comes!")!)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
