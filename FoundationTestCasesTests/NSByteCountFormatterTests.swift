//
//  FoundationTestCasesTests.swift
//  FoundationTestCasesTests
//
//  Created by Yan Li on 3/18/16.
//  Copyright © 2016 EF. All rights reserved.
//

import XCTest
@testable import FoundationTestCases

class NSByteCountFormatterTests: XCTestCase {
    
    func test_DefaultValues() {
        let formatter = NSByteCountFormatter()
        XCTAssertEqual(formatter.allowedUnits, NSByteCountFormatterUnits.UseDefault)
        XCTAssertEqual(formatter.countStyle, NSByteCountFormatterCountStyle.File)
        XCTAssertEqual(formatter.allowsNonnumericFormatting, true)
        XCTAssertEqual(formatter.includesUnit, true)
        XCTAssertEqual(formatter.includesCount, true)
        XCTAssertEqual(formatter.includesActualByteCount, false)
        XCTAssertEqual(formatter.adaptive, true)
        XCTAssertEqual(formatter.zeroPadsFractionDigits, false)
        XCTAssertEqual(formatter.formattingContext, NSFormattingContext.Unknown)
    }
    
    func test_allowedUnits() {
        
    }
    
    func test_countStyle() {
        
    }
    
    func test_allowsNonnumericFormatting() {
        
    }
    
    func test_includesUnit() {
        
    }
    
    func test_includesCount() {
        
    }
    
    func test_includesActualByteCount() {
        
    }
    
    func test_adaptive() {
        
    }
    
    func test_zeroPadsFractionDigits() {
        
    }
    
    func test_formattingContext() {
        
    }
    
}
