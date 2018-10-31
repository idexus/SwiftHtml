//
//  Forms.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Forms
extension Tag {
    public class form       : HtmlParentTag<ChildOfTag_form> {}
    public class label      : HtmlParentTag<ChildOfTag_label> {}
    public class input      : HtmlSingleTag {}
    public class button     : HtmlParentTag<ChildOfTag_button> {}
    public class select     : HtmlParentTag<ChildOfTag_select> {}
    public class datalist   : HtmlParentTag<ChildOfTag_datalist> {}
    public class optgroup   : HtmlParentTag<ChildOfTag_optgroup> {}
    public class option     : HtmlParentTag<ChildOfTag_option> {}
    public class textarea   : HtmlParentTag<ChildOfTag_textarea> {}
    public class output     : HtmlParentTag<ChildOfTag_output> {}
    public class progress   : HtmlParentTag<ChildOfTag_progress> {}
    public class meter      : HtmlParentTag<ChildOfTag_meter> {}
    public class fieldset   : HtmlParentTag<ChildOfTag_fieldset> {}
    public class legend     : HtmlParentTag<ChildOfTag_legend> {}
}

// ------- Type-safety ------

extension Tag.form      : ChildOfAnyBodyTag {}
extension Tag.label     : ChildOfAnyBodyTag {}
extension Tag.input     : ChildOfAnyBodyTag {}
extension Tag.button    : ChildOfAnyBodyTag {}
extension Tag.select    : ChildOfAnyBodyTag {}
extension Tag.datalist  : ChildOfAnyBodyTag {}
extension Tag.optgroup  : ChildOfAnyBodyTag {}
extension Tag.option    : ChildOfAnyBodyTag {}
extension Tag.textarea  : ChildOfAnyBodyTag {}
extension Tag.output    : ChildOfAnyBodyTag {}
extension Tag.progress  : ChildOfAnyBodyTag {}
extension Tag.meter     : ChildOfAnyBodyTag {}
extension Tag.fieldset  : ChildOfAnyBodyTag {}
extension Tag.legend    : ChildOfAnyBodyTag {}

// child protocols

public protocol ChildOfTag_form {}
public protocol ChildOfTag_label {}
public protocol ChildOfTag_button {}
public protocol ChildOfTag_select {}
public protocol ChildOfTag_datalist {}
public protocol ChildOfTag_optgroup {}
public protocol ChildOfTag_option {}
public protocol ChildOfTag_textarea {}
public protocol ChildOfTag_output {}
public protocol ChildOfTag_progress {}
public protocol ChildOfTag_meter {}
public protocol ChildOfTag_fieldset {}
public protocol ChildOfTag_legend {}


// ------- Attributes -------

// form
extension Tag.form : HtmlAttribute_acceptCharset {}
extension Tag.form : HtmlAttribute_action {}
extension Tag.form : HtmlAttribute_autocomplete {}
extension Tag.form : HtmlAttribute_enctype {}
extension Tag.form : HtmlAttribute_method {}
extension Tag.form : HtmlAttribute_name {}
extension Tag.form : HtmlAttribute_novalidate {}
extension Tag.form : HtmlAttribute_target {}

// label
extension Tag.label : HtmlAttribute_for {}

// input
//  - events:
extension Tag.input : HtmlEvent_onsearch {}
//  - attribs:
extension Tag.input : HtmlAttribute_accept {}
extension Tag.input : HtmlAttribute_alt {}
extension Tag.input : HtmlAttribute_autocomplete {}
extension Tag.input : HtmlAttribute_autofocus {}
extension Tag.input : HtmlAttribute_checked {}
extension Tag.input : HtmlAttribute_dirname {}
extension Tag.input : HtmlAttribute_disabled {}
extension Tag.input : HtmlAttribute_form {}
extension Tag.input : HtmlAttribute_formaction {}
extension Tag.input : HtmlAttribute_formenctype {}
extension Tag.input : HtmlAttribute_formmethod {}
extension Tag.input : HtmlAttribute_formnovalidate {}
extension Tag.input : HtmlAttribute_formtarget {}
extension Tag.input : HtmlAttribute_height {}
extension Tag.input : HtmlAttribute_list {}
extension Tag.input : HtmlAttribute_max {}
extension Tag.input : HtmlAttribute_maxlength {}
extension Tag.input : HtmlAttribute_min {}
extension Tag.input : HtmlAttribute_minlength {}
extension Tag.input : HtmlAttribute_multiple {}
extension Tag.input : HtmlAttribute_name {}
extension Tag.input : HtmlAttribute_pattern {}
extension Tag.input : HtmlAttribute_placeholder {}
extension Tag.input : HtmlAttribute_readonly {}
extension Tag.input : HtmlAttribute_required {}
extension Tag.input : HtmlAttribute_size {}
extension Tag.input : HtmlAttribute_src {}
extension Tag.input : HtmlAttribute_step {}
extension Tag.input : HtmlAttribute_type_input {}
extension Tag.input : HtmlAttribute_value {}
extension Tag.input : HtmlAttribute_width {}

// button
extension Tag.button : HtmlAttribute_autofocus {}
extension Tag.button : HtmlAttribute_disabled {}
extension Tag.button : HtmlAttribute_form {}
extension Tag.button : HtmlAttribute_formaction {}
extension Tag.button : HtmlAttribute_formenctype {}
extension Tag.button : HtmlAttribute_formmethod {}
extension Tag.button : HtmlAttribute_formnovalidate {}
extension Tag.button : HtmlAttribute_formtarget {}
extension Tag.button : HtmlAttribute_name {}
extension Tag.button : HtmlAttribute_type_button {}
extension Tag.button : HtmlAttribute_value {}

// select
extension Tag.select : HtmlAttribute_autocomplete {}
extension Tag.select : HtmlAttribute_autofocus {}
extension Tag.select : HtmlAttribute_disabled {}
extension Tag.select : HtmlAttribute_form {}
extension Tag.select : HtmlAttribute_multiple {}
extension Tag.select : HtmlAttribute_name {}
extension Tag.select : HtmlAttribute_required {}
extension Tag.select : HtmlAttribute_size {}

// optgroup
extension Tag.optgroup : HtmlAttribute_disabled {}
extension Tag.optgroup : HtmlAttribute_label {}

// option
extension Tag.option : HtmlAttribute_disabled {}
extension Tag.option : HtmlAttribute_label {}
extension Tag.option : HtmlAttribute_selected {}
extension Tag.option : HtmlAttribute_value {}

// textarea
extension Tag.textarea : HtmlAttribute_autocomplete {}
extension Tag.textarea : HtmlAttribute_autofocus {}
extension Tag.textarea : HtmlAttribute_cols {}
extension Tag.textarea : HtmlAttribute_dirname {}
extension Tag.textarea : HtmlAttribute_disabled {}
extension Tag.textarea : HtmlAttribute_form {}
extension Tag.textarea : HtmlAttribute_maxlength {}
extension Tag.textarea : HtmlAttribute_minlength {}
extension Tag.textarea : HtmlAttribute_name {}
extension Tag.textarea : HtmlAttribute_placeholder {}
extension Tag.textarea : HtmlAttribute_readonly {}
extension Tag.textarea : HtmlAttribute_required {}
extension Tag.textarea : HtmlAttribute_rows {}
extension Tag.textarea : HtmlAttribute_wrap {}

// output
extension Tag.output : HtmlAttribute_for {}
extension Tag.output : HtmlAttribute_form {}
extension Tag.output : HtmlAttribute_name {}

// progress
extension Tag.progress : HtmlAttribute_max {}
extension Tag.progress : HtmlAttribute_value {}

// meter
extension Tag.meter : HtmlAttribute_value {}
extension Tag.meter : HtmlAttribute_min {}
extension Tag.meter : HtmlAttribute_max {}
extension Tag.meter : HtmlAttribute_low {}
extension Tag.meter : HtmlAttribute_high {}
extension Tag.meter : HtmlAttribute_optimum {}

// fieldset
extension Tag.fieldset : HtmlAttribute_disabled {}
extension Tag.fieldset : HtmlAttribute_form {}
extension Tag.fieldset : HtmlAttribute_name {}
