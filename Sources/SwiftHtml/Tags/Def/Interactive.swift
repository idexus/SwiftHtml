//
//  Interactive.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Interactive
extension Tag {
    public class details : HtmlParentTag<ChildOfTag_details> {}
    public class summary : HtmlParentTag<ChildOfTag_summary> {}
    public class dialog  : HtmlParentTag<ChildOfTag_dialog> {}
}

// ------- Type-safety ------

extension Tag.details : ChildOfAnyBodyTag {}
extension Tag.summary : ChildOfAnyBodyTag {}
extension Tag.dialog  : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_details {}
public protocol ChildOfTag_summary {}
public protocol ChildOfTag_dialog {}


// ------- Attributes -------

// details
extension Tag.details : HtmlAttribute_open {}

// dialog
extension Tag.dialog : HtmlAttribute_open {}
