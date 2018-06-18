//
//  SwiftMarkTests.swift
//  SwiftMarkTests
//
//  Created by Pierre TACCHI on 04/12/15.
//  Copyright © 2015 Pierre TACCHI. All rights reserved.
//

import XCTest
import SwiftMark
@testable import SwiftMark

class SwiftMarkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let md = "**Swift***Mark*"
        if let html = try? commonMarkToHTML(md){
            print(html)
        }
    }
    
    func testWithFile() {
        let bundle = Bundle(for: type(of: self))
        if let url = bundle.url(forResource: "sample", withExtension: "md") {
            guard let md = try? loadCommonMarkFromURL(url, encoding: .utf8) else { return }
            guard let html = try? commonMarkToHTML(md) else { return }
            print(html)
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
