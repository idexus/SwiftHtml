//
//  HtmlTag.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 28/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

public protocol AnyHtmlElement {
    func toString() -> String
}

public protocol HtmlTag : AnyHtmlElement, HtmlRootAttributes, HtmlRootEvents {
    var attributesValues : HtmlAttributesValues { get set }
    init()
}

extension HtmlTag {
    var name: String {
        let selfMirror = Mirror(reflecting: self).subjectType
        return String(describing: selfMirror).lowercased()
    }
}
