//
//  TabularData.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// TabularData
extension Tag {
    public class table      : HtmlParentTag<ChildOfTag_table> {}
    public class caption    : HtmlParentTag<ChildOfTag_caption> {}
    public class colgroup   : HtmlParentTag<ChildOfTag_colgroup> {}
    public class col        : HtmlSingleTag {}
    public class tbody      : HtmlParentTag<ChildOfTag_tbody> {}
    public class thead      : HtmlParentTag<ChildOfTag_thead> {}
    public class tfoot      : HtmlParentTag<ChildOfTag_tfoot> {}
    public class tr         : HtmlParentTag<ChildOfTag_tr> {}
    public class td         : HtmlParentTag<ChildOfTag_td> {}
    public class th         : HtmlParentTag<ChildOfTag_th> {}
}

// ------- Type-safety ------


extension Tag.table     : ChildOfAnyBodyTag {}
extension Tag.caption   : ChildOfTag_table {}
extension Tag.colgroup  : ChildOfTag_table {}
extension Tag.col       : ChildOfTag_colgroup {}
extension Tag.tbody     : ChildOfTag_table {}
extension Tag.thead     : ChildOfTag_table {}
extension Tag.tfoot     : ChildOfTag_table {}
extension Tag.tr        : ChildOfTag_tbody, ChildOfTag_thead, ChildOfTag_tfoot {}
extension Tag.td        : ChildOfTag_tr {}
extension Tag.th        : ChildOfTag_tr {}

// child protocols

public protocol ChildOfTag_table {}
public protocol ChildOfTag_caption {}
public protocol ChildOfTag_colgroup {}
public protocol ChildOfTag_tbody {}
public protocol ChildOfTag_thead {}
public protocol ChildOfTag_tfoot {}
public protocol ChildOfTag_tr {}
public protocol ChildOfTag_td {}
public protocol ChildOfTag_th {}



// ------- Attributes -------

// table
extension Tag.table : HtmlAttribute_border {}

// colgroup
extension Tag.colgroup : HtmlAttribute_span {}

// col
extension Tag.col : HtmlAttribute_span {}

// tbody
extension Tag.tbody : HtmlAttribute_rowgroup {}

// thead
extension Tag.thead : HtmlAttribute_rowgroup {}

// tfoot
extension Tag.tfoot : HtmlAttribute_rowgroup {}

// tr
extension Tag.tr : HtmlAttribute_row {}

// td
extension Tag.td : HtmlAttribute_colspan {}
extension Tag.td : HtmlAttribute_rowspan {}
extension Tag.td : HtmlAttribute_headers {}
extension Tag.td : HtmlAttribute_cell {}

// th
extension Tag.th : HtmlAttribute_colspan {}
extension Tag.th : HtmlAttribute_rowspan {}
extension Tag.th : HtmlAttribute_headers {}
extension Tag.th : HtmlAttribute_cell {}
extension Tag.th : HtmlAttribute_abbr {}
extension Tag.th : HtmlAttribute_scope {}
