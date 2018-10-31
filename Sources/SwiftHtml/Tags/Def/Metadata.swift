//
//  Metadata.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Metadata
extension Tag {
    public class head   : HtmlParentTag<ChildOfTag_head> {}
    public class title  : HtmlParentTag<ChildOfTag_title> {}
    public class base   : HtmlSingleTag {}
    public class link   : HtmlSingleTag {}
    public class meta   : HtmlSingleTag {}
    public class style  : HtmlParentTag<ChildOfTag_style> {}
}

// ------- Type-safety ------

extension Tag.head  : childOfTag_html {}
extension Tag.title : ChildOfTag_head {}
extension Tag.base  : ChildOfTag_head {}
extension Tag.link  : ChildOfTag_head {}
extension Tag.meta  : ChildOfTag_head {}
extension Tag.style : ChildOfTag_head {}

// child protocols

public protocol ChildOfTag_head {}
public protocol ChildOfTag_title {}
public protocol ChildOfTag_style {}


// ------- Attributes -------

// style
//extension Tag.style {
//    public convenience init (_ styles: [String:String])  {
//        let styleString = " ".join(styles.map{return "\($0) {\($1)}"})
//        self.init(styleString)
//    }
//}

// base
extension Tag.base : HtmlAttribute_href {}
extension Tag.base : HtmlAttribute_target {}

// link
extension Tag.link : HtmlAttribute_href {}
extension Tag.link : HtmlAttribute_crossorigin {}
extension Tag.link : HtmlAttribute_rel {}
extension Tag.link : HtmlAttribute_media {}
extension Tag.link : HtmlAttribute_nonce {}
extension Tag.link : HtmlAttribute_hreflang {}
extension Tag.link : HtmlAttribute_type {}
extension Tag.link : HtmlAttribute_referrerpolicy {}
extension Tag.link : HtmlAttribute_sizes {}

// meta
extension Tag.meta : HtmlAttribute_name {}
extension Tag.meta : HtmlAttribute_httpequiv {}
extension Tag.meta : HtmlAttribute_content {}
extension Tag.meta : HtmlAttribute_charset {}

// style
extension Tag.style : HtmlAttribute_media {}
extension Tag.style : HtmlAttribute_nonce {}
extension Tag.style : HtmlAttribute_type {}
