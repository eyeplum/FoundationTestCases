//
//  NSBundleTests.swift
//  FoundationTestCases
//
//  Created by Yan Li on 3/18/16.
//  Copyright © 2016 EF. All rights reserved.
//

import XCTest

class TestBundle {
    
    class func bundleForClass(aClass: AnyClass) -> NSBundle {
        let allBundles = NSBundle.allFrameworks() + NSBundle.allBundles()
        
        let bundlesContainingClass = allBundles.filter {
            return $0.loaded
        }.filter {
            return $0.classNamed(aClass.description()) != nil
        }
                
        return bundlesContainingClass.first!
    }
    
}

class NSBundleTests: XCTestCase {

    func test_bundleForClass() {
        let foundation = NSBundle(forClass: NSString.self)
        let test_foundation = TestBundle.bundleForClass(NSString.self)
        XCTAssertEqual(foundation, test_foundation)
        
        let core_animation = NSBundle(forClass: CALayer.self)
        let test_core_animation = TestBundle.bundleForClass(CALayer.self)
        XCTAssertEqual(core_animation, test_core_animation)
        
        let testBundle = NSBundle(forClass: NSBundleTests.self)
        let test_testBundle = TestBundle.bundleForClass(NSBundleTests.self)
        XCTAssertEqual(testBundle, test_testBundle)
        
        let appBundle = NSBundle(forClass: AppDelegate.self)
        let test_appBundle = TestBundle.bundleForClass(AppDelegate.self)
        XCTAssertEqual(appBundle, test_appBundle)
    }

}
