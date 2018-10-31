//
//  HtmlParentTag.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 30/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


/// Type alias for HTML parent tags.

/// Base object for all parent tags.
public class HtmlParentTag<Child> : HtmlTag, HtmlParentTagProtocol, HtmlRootAttributes {
    public typealias ChildTag = Child
    
    public var attributesValues = HtmlAttributesValues()

    public required init() {}
    public var childs = [AnyHtmlElement]()
    
    public func toString() -> String {
        var output = ""
        for child in childs {
            output += child.toString()
        }
        return "<\(name)\(self.attributesToString())>" + output + "</\(name)>"
    }
}

/// HtmlParentTag protocol (for inner Html builders).
public protocol HtmlParentTagProtocol : AnyObject {
    associatedtype ChildTag
    var childs : [AnyHtmlElement] { get set }
    init()
}

// ---- constructors ----
extension HtmlParentTagProtocol {
    public init (_ string: String)  {
        self.init()
        self.childs.append(string)
    }
    public init(_ closure: (inout [ChildTag]) -> ()) {
        self.init()
        var tags = [ChildTag]()
        closure(&tags)
        childs += tags as! [AnyHtmlElement]
    }
    public init(_ childs: ChildTag...) {
        self.init()
        self.childs += childs as! [AnyHtmlElement]
    }
}

// ---- inner html ----
extension HtmlParentTagProtocol {
    public func innerHtml(_ closure: (inout [ChildTag]) -> ()) -> Self {
        var tags = [ChildTag]()
        closure(&tags)
        self.childs += tags as! [AnyHtmlElement]
        return self
    }
    public func innerHtml(_ childs: ChildTag...) -> Self {
        self.childs += childs as! [AnyHtmlElement]
        return self
    }
}
