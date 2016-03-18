//
//  FoundationTestCasesTests.swift
//  FoundationTestCasesTests
//
//  Created by Yan Li on 3/18/16.
//  Copyright © 2016 EF. All rights reserved.
//

import XCTest

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
        // TODO: Test units
    }
    
    func test_countStyle() {
        let formatter = NSByteCountFormatter()
        
        let fileSize: Int64 = 1000
        formatter.countStyle = .File
        let fileSizeResult = formatter.stringFromByteCount(fileSize)
        XCTAssertEqual(fileSizeResult, "1 KB")
        XCTAssertEqual(fileSizeResult, NSByteCountFormatter.stringFromByteCount(fileSize, countStyle: .File))
        
        formatter.countStyle = .Decimal
        let decimalSizeResult = formatter.stringFromByteCount(fileSize)
        XCTAssertEqual(decimalSizeResult, "1 KB")
        XCTAssertEqual(decimalSizeResult, NSByteCountFormatter.stringFromByteCount(fileSize, countStyle: .Decimal))
        
        let memorySize: Int64 = 1024
        formatter.countStyle = .Memory
        let memorySizeResult = formatter.stringFromByteCount(memorySize)
        XCTAssertEqual(memorySizeResult, "1 KB")
        XCTAssertEqual(memorySizeResult, NSByteCountFormatter.stringFromByteCount(memorySize, countStyle: .Memory))
        
        formatter.countStyle = .Binary
        let binarySizeResult = formatter.stringFromByteCount(memorySize)
        XCTAssertEqual(binarySizeResult, "1 KB")
        XCTAssertEqual(binarySizeResult, NSByteCountFormatter.stringFromByteCount(memorySize, countStyle: .Binary))
    }
    
    func test_allowsNonnumericFormatting() {
        let formatter = NSByteCountFormatter()
        let size: Int64 = 0
        
        formatter.allowsNonnumericFormatting = true
        XCTAssertEqual(formatter.stringFromByteCount(size), "Zero KB")
        
        formatter.allowsNonnumericFormatting = false
        XCTAssertEqual(formatter.stringFromByteCount(size), "0 bytes")
        
        // TODO: More cases when interfering with `allowedUnits`
    }
    
    func test_includesCountAndIncludesUnit() {
        let formatter = NSByteCountFormatter()
        let size: Int64 = 722842
        
        formatter.includesCount = true
        formatter.includesUnit = true
        XCTAssertEqual(formatter.stringFromByteCount(size), "723 KB")
        
        formatter.includesCount = true
        formatter.includesUnit = false
        XCTAssertEqual(formatter.stringFromByteCount(size), "723")

        formatter.includesCount = false
        formatter.includesUnit = true
        XCTAssertEqual(formatter.stringFromByteCount(size), "KB")

        // According to the doc, this will result in am empty string
        // But it seems not, is it a Bug?
        // formatter.includesCount = false
        // formatter.includesUnit = false
        // XCTAssertEqual(formatter.stringFromByteCount(size), "")
    }
    
    func test_includesActualByteCount() {
        // TODO: Test appending byte count
    }
    
    func test_adaptive() {
        // TODO: Test adaptive
    }
    
    func test_zeroPadsFractionDigits() {
        // TODO: Test zero padding
    }
    
    func test_formattingContext() {
        // TODO: Test formatting context
    }
    
}
