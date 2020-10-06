//
//  Unit_Tests.h
//  Unit Tests
//
//  Created by Jānis Kiršteins on 7/16/13.
//  Copyright (c) 2013 Jānis Kiršteins. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Unit_Tests : XCTestCase

- (void)testSecureArchivingPositiveInt API_AVAILABLE(ios(11), macos(10.13));
- (void)testSecureArchivingNegativeInt API_AVAILABLE(ios(11), macos(10.13));

@end
