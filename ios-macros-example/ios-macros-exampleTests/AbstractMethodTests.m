//
//  AbstractMethodTests.m
//  ios-macros-example
//
//  Created by Konrad on 05/12/15.
//  Copyright © 2015 Konrad. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AbstractThing.h"
#import "ConcreteThing.h"

@interface AbstractMethodTests : XCTestCase

@end

@implementation AbstractMethodTests

- (void)test_abstractThingShouldThrowNotImplementedException {
    AbstractThing *abstractThing = [AbstractThing new];
    XCTAssertThrows([abstractThing getSomething], @"getSomething should throw");
}

- (void)test_concreteThingShouldNotThrowAndReturnObject {
    AbstractThing *concreteThing = [ConcreteThing new];
    XCTAssertNotNil([concreteThing getSomething], @"getSomething should return object");
}


@end
