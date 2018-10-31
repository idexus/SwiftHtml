//
//  Semantics.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Schematics
extension Tag {
    public class a      : HtmlParentTag<ChildOfTag_a> {}
    public class em     : HtmlParentTag<ChildOfTag_em> {}
    public class strong : HtmlParentTag<ChildOfTag_strong> {}
    public class small  : HtmlParentTag<ChildOfTag_small> {}
    public class s      : HtmlParentTag<ChildOfTag_s> {}
    public class cite   : HtmlParentTag<ChildOfTag_cite> {}
    public class q      : HtmlParentTag<ChildOfTag_q> {}
    public class dfn    : HtmlParentTag<ChildOfTag_dfn> {}
    public class abbr   : HtmlParentTag<ChildOfTag_abbr> {}
    public class ruby   : HtmlParentTag<ChildOfTag_ruby> {}
    public class rb     : HtmlParentTag<ChildOfTag_rb> {}
    public class rt     : HtmlParentTag<ChildOfTag_rt> {}
    public class rtc    : HtmlParentTag<ChildOfTag_rtc> {}
    public class rp     : HtmlParentTag<ChildOfTag_rp> {}
    public class data   : HtmlParentTag<ChildOfTag_data> {}
    public class time   : HtmlParentTag<ChildOfTag_time> {}
    public class code   : HtmlParentTag<ChildOfTag_code> {}
    public class `var`  : HtmlParentTag<ChildOfTag_var> {}
    public class samp   : HtmlParentTag<ChildOfTag_samp> {}
    public class kbd    : HtmlParentTag<ChildOfTag_kbd> {}
    public class sub    : HtmlParentTag<ChildOfTag_sub> {}
    public class sup    : HtmlParentTag<ChildOfTag_sup> {}
    public class i      : HtmlParentTag<ChildOfTag_i> {}
    public class b      : HtmlParentTag<ChildOfTag_b> {}
    public class u      : HtmlParentTag<ChildOfTag_u> {}
    public class mark   : HtmlParentTag<ChildOfTag_mark> {}
    public class bdi    : HtmlParentTag<ChildOfTag_bdi> {}
    public class bdo    : HtmlParentTag<ChildOfTag_bdo> {}
    public class span   : HtmlParentTag<ChildOfTag_span> {}
    public class br     : HtmlSingleTag {}
    public class wbr    : HtmlSingleTag {}
}

// ------- Type-safety ------

extension Tag.a         : ChildOfAnyBodyTag {}
extension Tag.em        : ChildOfAnyBodyTag {}
extension Tag.strong    : ChildOfAnyBodyTag {}
extension Tag.small     : ChildOfAnyBodyTag {}
extension Tag.s         : ChildOfAnyBodyTag {}
extension Tag.cite      : ChildOfAnyBodyTag {}
extension Tag.q         : ChildOfAnyBodyTag {}
extension Tag.dfn       : ChildOfAnyBodyTag {}
extension Tag.abbr      : ChildOfAnyBodyTag {}
extension Tag.ruby      : ChildOfAnyBodyTag {}
extension Tag.rb        : ChildOfAnyBodyTag {}
extension Tag.rt        : ChildOfAnyBodyTag {}
extension Tag.rtc       : ChildOfAnyBodyTag {}
extension Tag.rp        : ChildOfAnyBodyTag {}
extension Tag.data      : ChildOfAnyBodyTag {}
extension Tag.time      : ChildOfAnyBodyTag {}
extension Tag.code      : ChildOfAnyBodyTag {}
extension Tag.`var`     : ChildOfAnyBodyTag {}
extension Tag.samp      : ChildOfAnyBodyTag {}
extension Tag.kbd       : ChildOfAnyBodyTag {}
extension Tag.sub       : ChildOfAnyBodyTag {}
extension Tag.sup       : ChildOfAnyBodyTag {}
extension Tag.i         : ChildOfAnyBodyTag {}
extension Tag.b         : ChildOfAnyBodyTag {}
extension Tag.u         : ChildOfAnyBodyTag {}
extension Tag.mark      : ChildOfAnyBodyTag {}
extension Tag.bdi       : ChildOfAnyBodyTag {}
extension Tag.bdo       : ChildOfAnyBodyTag {}
extension Tag.span      : ChildOfAnyBodyTag {}
extension Tag.br        : ChildOfAnyBodyTag {}
extension Tag.wbr       : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_a {}
public protocol ChildOfTag_em {}
public protocol ChildOfTag_strong {}
public protocol ChildOfTag_small {}
public protocol ChildOfTag_s {}
public protocol ChildOfTag_cite {}
public protocol ChildOfTag_q {}
public protocol ChildOfTag_dfn {}
public protocol ChildOfTag_abbr {}
public protocol ChildOfTag_ruby {}
public protocol ChildOfTag_rb {}
public protocol ChildOfTag_rt {}
public protocol ChildOfTag_rtc {}
public protocol ChildOfTag_rp {}
public protocol ChildOfTag_data {}
public protocol ChildOfTag_time {}
public protocol ChildOfTag_code {}
public protocol ChildOfTag_var {}
public protocol ChildOfTag_samp {}
public protocol ChildOfTag_kbd {}
public protocol ChildOfTag_sub {}
public protocol ChildOfTag_sup {}
public protocol ChildOfTag_i {}
public protocol ChildOfTag_b {}
public protocol ChildOfTag_u {}
public protocol ChildOfTag_mark {}
public protocol ChildOfTag_bdi {}
public protocol ChildOfTag_bdo {}
public protocol ChildOfTag_span {}


// ------- Attributes -------

// a
extension Tag.a : HtmlAttribute_download {}
extension Tag.a : HtmlAttribute_href {}
extension Tag.a : HtmlAttribute_target {}
extension Tag.a : HtmlAttribute_rel {}
extension Tag.a : HtmlAttribute_rev {}
extension Tag.a : HtmlAttribute_hreflang {}
extension Tag.a : HtmlAttribute_type {}
extension Tag.a : HtmlAttribute_referrerpolicy {}

// q
extension Tag.q : HtmlAttribute_cite {}

// data
extension Tag.data : HtmlAttribute_value {}

// time
extension Tag.time : HtmlAttribute_datetime {}
