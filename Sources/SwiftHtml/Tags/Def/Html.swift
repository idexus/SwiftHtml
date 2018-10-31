//
//  Html.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// html
extension Tag {
    public class html : HtmlParentTag<childOfTag_html> {
        public override func toString() -> String {
            return "<!DOCTYPE html>" + super.toString()
        }
    }
}

// ------- Type-safety ------

public protocol childOfTag_html {}

// ------- Attributes -------

// html
extension Tag.html : HtmlAttribute_manifest {}
