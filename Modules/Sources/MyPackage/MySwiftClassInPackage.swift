// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

@objcMembers
public final class MySwiftClassInPackage: NSObject {
    public let name: String

    public init(name: String) {
        self.name = name
        super.init()
    }

    public func tada() -> String { "hello world" }
}
