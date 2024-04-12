//
//  MyObjcClass.m
//  MyApp
//
//  Created by Denis Dzyubenko on 12/04/2024.
//

#import <Foundation/Foundation.h>
#import "MyObjcClass.h"

@implementation MyObjcClass

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)testFunc1:(NSString *)value {
    NSLog(@"MyObjcClass.testFunc1");
}

- (void)testFunc2:(MySwiftClassInPackage *)value {
    NSLog(@"MyObjcClass.testFunc2");
}

@end
