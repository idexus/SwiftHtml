//
//  StringExtension.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


extension String {
    public func join(_ strings : [String]) -> String {
        var outString = ""
        for i in 0..<strings.count-1 {
            outString += strings[i] + self
        }
        outString += strings.last ?? ""
        return outString
    }
}


extension String : AnyHtmlElement {
    public func toString() -> String {
        return self
    }
}

extension String : ChildOfAnyBodyTag, ChildOfAnyMetaTag {}
