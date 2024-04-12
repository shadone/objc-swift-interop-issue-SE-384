//
//  MyObjcClass.h
//  MyApp
//
//  Created by Denis Dzyubenko on 12/04/2024.
//

#pragma once

#import <Foundation/Foundation.h>

@class MySwiftClassInApp;
void takeASwiftClassInApp(MySwiftClassInApp * _Nonnull);

@class MySwiftClassInPackage;
void takeASwiftClassFromPackage(MySwiftClassInPackage *_Nonnull);

@interface MyObjcClass: NSObject

- (instancetype _Nonnull)init;

- (void)testFunc1:(NSString * _Nonnull)value;
- (void)testFunc2:(MySwiftClassInPackage * _Nonnull)value;

@end
