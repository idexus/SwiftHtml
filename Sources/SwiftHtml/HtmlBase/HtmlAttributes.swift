//
//  HtmlAttributes.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

///  Represents all Html tags.
public protocol HtmlAttributes {
    var attributesValues: HtmlAttributesValues { get set }
}


// ------- toString() ------
extension HtmlAttributes {
    func attributeToString(key: String, value: String) -> String {
        if value.count > 0 {
            return "\(key)=\"\(value)\""
        } else {
            return "\(key)"
        }
    }
    
    internal func attributesToString() -> String {
        var string = ""
        if attributesValues.list.count > 0 {
            string = " " + " ".join(attributesValues.list.map{self.attributeToString(key: $0.name, value: $0.value)})
        }
        return string
    }
}
