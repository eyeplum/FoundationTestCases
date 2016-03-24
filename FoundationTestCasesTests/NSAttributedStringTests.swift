//
//  NSAttributedStringTests.swift
//  FoundationTestCases
//
//  Created by Yan Li on 3/23/16.
//  Copyright © 2016 EF. All rights reserved.
//

import XCTest

class NSAttributedStringTests: XCTestCase {

    func testLength() {
        let string = "😀⌘ಠ_ರೃ"
        let attrString = NSAttributedString(string: string)
        XCTAssertEqual(attrString.length, string.utf16.count)
    }
    
    func testAttributes() {
        let string = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consectetur et sem vitae consectetur. Nam venenatis lectus a laoreet blandit."
        let attributes: [String : AnyObject] = ["attribute.placeholder.key" : "attribute.placeholder.value" as NSString]
        let attrString = NSAttributedString(string: string, attributes: attributes)
        var range = NSRange(location: NSNotFound, length: 0)
        let location = 0
        let fetchedAttributes = attrString.attributesAtIndex(location, effectiveRange: &range)
        guard let attr = fetchedAttributes["attribute.placeholder.key"] as? String else {
            XCTAssert(false)
            return
        }
        XCTAssertEqual(attr, "attribute.placeholder.value")
        XCTAssertEqual(range.location, location)
        XCTAssertEqual(range.length, attrString.length - location)
    }

}
