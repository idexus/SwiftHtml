//
//  Edits.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

// Edits
extension Tag {
    public class ins : HtmlParentTag<ChildOfTag_ins> {}
    public class del : HtmlParentTag<ChildOfTag_del> {}
}

// ------- Type-safety ------


extension Tag.ins : ChildOfAnyBodyTag {}
extension Tag.del : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_ins {}
public protocol ChildOfTag_del {}


// ------- Attributes -------

// ins
extension Tag.ins : HtmlAttribute_cite {}
extension Tag.ins : HtmlAttribute_datetime {}

// del
extension Tag.del : HtmlAttribute_cite {}
extension Tag.del : HtmlAttribute_datetime {}

