//
//  Sections.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Sections
extension Tag {
    public class body       : HtmlParentTag<ChildOfTag_body> {}
    public class article    : HtmlParentTag<ChildOfTag_article> {}
    public class section    : HtmlParentTag<ChildOfTag_section> {}
    public class nav        : HtmlParentTag<ChildOfTag_nav> {}
    public class aside      : HtmlParentTag<ChildOfTag_aside> {}
    public class h1         : HtmlParentTag<ChildOfTag_h1> {}
    public class h2         : HtmlParentTag<ChildOfTag_h2> {}
    public class h3         : HtmlParentTag<ChildOfTag_h3> {}
    public class h4         : HtmlParentTag<ChildOfTag_h4> {}
    public class h5         : HtmlParentTag<ChildOfTag_h5> {}
    public class h6         : HtmlParentTag<ChildOfTag_h6> {}
    public class header     : HtmlParentTag<ChildOfTag_header> {}
    public class footer     : HtmlParentTag<ChildOfTag_footer> {}
}

// ------- Type-safety ------

extension Tag.body      : childOfTag_html {}
extension Tag.article   : ChildOfAnyBodyTag {}
extension Tag.section   : ChildOfAnyBodyTag {}
extension Tag.nav       : ChildOfAnyBodyTag {}
extension Tag.aside     : ChildOfAnyBodyTag {}
extension Tag.h1        : ChildOfAnyBodyTag {}
extension Tag.h2        : ChildOfAnyBodyTag {}
extension Tag.h3        : ChildOfAnyBodyTag {}
extension Tag.h4        : ChildOfAnyBodyTag {}
extension Tag.h5        : ChildOfAnyBodyTag {}
extension Tag.h6        : ChildOfAnyBodyTag {}
extension Tag.header    : ChildOfAnyBodyTag {}
extension Tag.footer    : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_body {}
public protocol ChildOfTag_article {}
public protocol ChildOfTag_section {}
public protocol ChildOfTag_nav {}
public protocol ChildOfTag_aside {}
public protocol ChildOfTag_h1 {}
public protocol ChildOfTag_h2 {}
public protocol ChildOfTag_h3 {}
public protocol ChildOfTag_h4 {}
public protocol ChildOfTag_h5 {}
public protocol ChildOfTag_h6 {}
public protocol ChildOfTag_header {}
public protocol ChildOfTag_footer {}


// ------- Attributes -------

// body
extension Tag.body : HtmlEvent_onafterprint {}
extension Tag.body : HtmlEvent_onbeforeprint {}
extension Tag.body : HtmlEvent_onbeforeunload {}
extension Tag.body : HtmlEvent_onhashchange {}
extension Tag.body : HtmlEvent_onlanguagechange {}
extension Tag.body : HtmlEvent_onmessage {}
extension Tag.body : HtmlEvent_onoffline {}
extension Tag.body : HtmlEvent_ononline {}
extension Tag.body : HtmlEvent_onpagehide {}
extension Tag.body : HtmlEvent_onpageshow {}
extension Tag.body : HtmlEvent_onpopstate {}
extension Tag.body : HtmlEvent_onrejectionhandled {}
extension Tag.body : HtmlEvent_onstorage {}
extension Tag.body : HtmlEvent_onunhandledrejection {}
extension Tag.body : HtmlEvent_onunload {}
