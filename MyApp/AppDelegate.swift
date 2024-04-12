//
//  AppDelegate.swift
//  MyApp
//
//  Created by Denis Dzyubenko on 12/04/2024.
//

import UIKit
import MyPackage

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let swiftClassInPackage = MySwiftClassInPackage(name: "John Doe")
        let myObjcClass = MyObjcClass()

        // this func is visible from Swift.
        myObjcClass.testFunc1("")

        // this func is NOT visible from Swift.
        // Related proposal SE-0384 https://github.com/apple/swift-evolution/blob/main/proposals/0384-importing-forward-declared-objc-interfaces-and-protocols.md
        myObjcClass.testFunc2(swiftClassInPackage)

        // Same problem with standalone function, not only limited to ObjC class members.
        // For example here is a function that takes forward declared class:
        // "Foo" is forward declared in the same module (in the main app):
        takeASwiftClassInApp(MySwiftClassInApp()) // works

        takeASwiftClassFromPackage(MySwiftClassInPackage(name: "foo")) // does NOT work

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
