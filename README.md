# FoundationTestCases
Test Cases for Objective-C `Foundation.framework`, used as guidance for conducting tests on `swift-corelibs-foundation`.

## What's this

Before we write any test for classes in `swift-corelibs-foundation`, we first check how it behaves on OS X with `Foundation.framework`.

By doing this, we can be confident about what should (and shouldn't) happen when the same class is ported to the pure Swift counterpart.

## Classes to cover

- [ ] `NSByteCountFormater` _Working in Progress_
- [ ] `NSDateComponentsFormatter`
- [ ] `NSDateIntervalFormatter`
- [ ] `NSEnergyFormatter`
- [ ] `NSLengthFormatter`
- [ ] `NSMassFormatter`
- [x] `NSBundle` _Partly_

