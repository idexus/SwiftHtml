//
//  Grouping.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 24/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Grouping
extension Tag {
    public class p          : HtmlParentTag<ChildOfTag_p> {}
    public class address    : HtmlParentTag<ChildOfTag_address> {}
    public class hr         : HtmlSingleTag {}
    public class pre        : HtmlParentTag<ChildOfTag_pre> {}
    public class blockquote : HtmlParentTag<ChildOfTag_blockquote> {}
    public class ol         : HtmlParentTag<ChildOfTag_ol> {}
    public class ul         : HtmlParentTag<ChildOfTag_ul> {}
    public class li         : HtmlParentTag<ChildOfTag_li> {}
    public class dl         : HtmlParentTag<ChildOfTag_dl> {}
    public class dt         : HtmlParentTag<ChildOfTag_dt> {}
    public class dd         : HtmlParentTag<ChildOfTag_dd> {}
    public class figure     : HtmlParentTag<ChildOfTag_figure> {}
    public class figcaption : HtmlParentTag<ChildOfTag_figcaption> {}
    public class main       : HtmlParentTag<ChildOfTag_main> {}
    public class div        : HtmlParentTag<ChildOfTag_div> {}
}

// ------- Type-safety ------

extension Tag.p          : ChildOfAnyBodyTag {}
extension Tag.address    : ChildOfAnyBodyTag {}
extension Tag.hr         : ChildOfAnyBodyTag {}
extension Tag.pre        : ChildOfAnyBodyTag {}
extension Tag.blockquote : ChildOfAnyBodyTag {}
extension Tag.ol         : ChildOfAnyBodyTag {}
extension Tag.ul         : ChildOfAnyBodyTag {}
extension Tag.li         : ChildOfTag_ul, ChildOfTag_ol {}
extension Tag.dl         : ChildOfAnyBodyTag {}
extension Tag.dt         : ChildOfTag_dl {}
extension Tag.dd         : ChildOfTag_dl {}
extension Tag.figure     : ChildOfAnyBodyTag {}
extension Tag.figcaption : ChildOfTag_figure {}
extension Tag.main       : ChildOfAnyBodyTag {}
extension Tag.div        : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_p {}
public protocol ChildOfTag_address {}
public protocol ChildOfTag_pre {}
public protocol ChildOfTag_blockquote {}
public protocol ChildOfTag_ol {}
public protocol ChildOfTag_ul {}
public protocol ChildOfTag_li {}
public protocol ChildOfTag_dl {}
public protocol ChildOfTag_dt {}
public protocol ChildOfTag_dd {}
public protocol ChildOfTag_figure {}
public protocol ChildOfTag_figcaption {}
public protocol ChildOfTag_main {}
public protocol ChildOfTag_div {}


// ------- Attributes -------

// blockquote
extension Tag.blockquote : HtmlAttribute_cite {}

// ol
extension Tag.ol : HtmlAttribute_reversed {}
extension Tag.ol : HtmlAttribute_start {}
extension Tag.ol : HtmlAttribute_type {}

// li
extension Tag.li : HtmlAttribute_value {}

