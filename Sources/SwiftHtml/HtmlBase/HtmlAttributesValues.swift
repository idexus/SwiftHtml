//
//  HtmlAttributesValues.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

public class HtmlAttributesValues {
    
    internal struct Attribute {
        let name: String
        let value: String
    }
    
    private var attributeSet = Set<String>()
    internal var list = [Attribute]()
    
    public func addOnceFor(key: String, value: String) {
        assert(self.attributeSet.insert(key).inserted, "Only once time allowed")
        self.list.append(Attribute(name: key, value: value))
    }
}
