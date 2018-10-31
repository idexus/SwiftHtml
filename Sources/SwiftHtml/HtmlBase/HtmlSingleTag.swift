//
//  HtmlSingleTag.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 30/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


public class HtmlSingleTag : HtmlTag, HtmlRootAttributes {
    public var attributesValues = HtmlAttributesValues()
        
    public required init() {}
    
    public func toString() -> String {
        return "<\(name)\(attributesToString())>"
    }
}
