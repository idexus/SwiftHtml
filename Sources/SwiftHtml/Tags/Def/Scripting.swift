//
//  Scripting.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation



// Scripting
extension Tag {
    public class script     : HtmlParentTag<ChildOfTag_script> {}
    public class noscript   : HtmlParentTag<ChildOfTag_noscript> {}
    public class template   : HtmlParentTag<ChildOfTag_template> {}
    public class canvas     : HtmlParentTag<ChildOfTag_canvas> {}
}

// ------- Type-safety ------

extension Tag.script    : ChildOfAnyBodyTag {}
extension Tag.noscript  : ChildOfAnyBodyTag {}
extension Tag.template  : ChildOfAnyBodyTag {}
extension Tag.canvas    : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_script {}
public protocol ChildOfTag_noscript {}
public protocol ChildOfTag_template {}
public protocol ChildOfTag_canvas {}


// ------- Attributes -------

// script
extension Tag.script : HtmlAttribute_src {}
extension Tag.script : HtmlAttribute_type {}
extension Tag.script : HtmlAttribute_charset {}
extension Tag.script : HtmlAttribute_async {}
extension Tag.script : HtmlAttribute_defer {}
extension Tag.script : HtmlAttribute_crossorigin {}
extension Tag.script : HtmlAttribute_nonce {}

// canvas
extension Tag.canvas : HtmlAttribute_height {}
extension Tag.canvas : HtmlAttribute_width {}

