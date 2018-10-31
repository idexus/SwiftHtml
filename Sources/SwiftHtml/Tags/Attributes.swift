//
//  Attributes.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 30/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

//----- Main

public protocol HtmlRootAttributes : HtmlAttributes {}
extension HtmlRootAttributes {
    public func accesskey(_ key: String) -> Self {
        attributesValues.addOnceFor(key: "accesskey", value: key)
        return self
    }
    
    public func `class`(_ classes: String...) -> Self {
        attributesValues.addOnceFor(key: "class", value: " ".join(classes))
        return self
    }
    
    public func contenteditable(_ editable: Bool) -> Self {
        attributesValues.addOnceFor(key: "contenteditable", value: String(editable))
        return self
    }
    
    public func dir(_ dir: HtmlTagDir) -> Self {
        attributesValues.addOnceFor(key: "dir", value: dir.rawValue)
        return self
    }
    
    public func draggable(_ draggable: Bool) -> Self {
        attributesValues.addOnceFor(key: "draggable", value: String(draggable))
        return self
    }
    
    public func hidden() -> Self {
        attributesValues.addOnceFor(key: "hidden", value: "")
        return self
    }
    
    public func id(_ id: String) -> Self {
        attributesValues.addOnceFor(key: "id", value: id)
        return self
    }
    
    public func lang(_ lang: String) -> Self {
        attributesValues.addOnceFor(key: "lang", value: lang)
        return self
    }
    
    public func spellcheck(_ check: Bool) -> Self {
        attributesValues.addOnceFor(key: "spellcheck", value: String(check))
        return self
    }
    
    public func style(_ style: String) -> Self {
        attributesValues.addOnceFor(key: "style", value: style)
        return self
    }
    
    public func tabindex(_ number: Int) -> Self {
        attributesValues.addOnceFor(key: "tabindex", value: String(number))
        return self
    }
    
    public func title(_ title: String) -> Self {
        attributesValues.addOnceFor(key: "title", value: title)
        return self
    }
    
    public func translate(_ translate: Bool) -> Self {
        attributesValues.addOnceFor(key: "translate", value: String(translate))
        return self
    }
    
    // Data
    
    public func data(_ name: String, value: String) -> Self {
        attributesValues.addOnceFor(key: "data-\(name)", value: value)
        return self
    }
    
    public func data(_ name: String, value: Bool) -> Self {
        attributesValues.addOnceFor(key: "data-\(name)", value: String(value))
        return self
    }
}


//----- Other



public protocol HtmlAttribute_datetime : HtmlAttributes {}
extension HtmlAttribute_datetime {
    public func datetime(_ datetime: NSDate) -> Self {
        attributesValues.addOnceFor(key: "datetime", value: datetime.description)
        return self
    }
}

public protocol HtmlAttribute_src : HtmlAttributes {}
extension HtmlAttribute_src {
    public func src(_ url : String) -> Self {
        attributesValues.addOnceFor(key: "src", value: url)
        return self
    }
}

public protocol HtmlAttribute_srcset : HtmlAttributes {}
extension HtmlAttribute_srcset {
    public func srcset(_ value: String) -> Self {
        attributesValues.addOnceFor(key: "srcset", value: value)
        return self
    }
}

public protocol HtmlAttribute_usemap : HtmlAttributes {}
extension HtmlAttribute_usemap {
    public func usemap(_ mapName : String) -> Self {
        attributesValues.addOnceFor(key: "usemap", value: mapName)
        return self
    }
}

public protocol HtmlAttribute_ismap : HtmlAttributes {}
extension HtmlAttribute_ismap {
    public func ismap() -> Self {
        attributesValues.addOnceFor(key: "ismap", value: "")
        return self
    }
}

public protocol HtmlAttribute_longdesc : HtmlAttributes {}
extension HtmlAttribute_longdesc {
    public func longdesc(_ url : String) -> Self {
        attributesValues.addOnceFor(key: "longdesc", value: url)
        return self
    }
}

public protocol HtmlAttribute_srcdoc : HtmlAttributes {}
extension HtmlAttribute_srcdoc {
    public func srcdoc(_ srcdoc : String) -> Self {
        attributesValues.addOnceFor(key: "srcdoc", value: srcdoc)
        return self
    }
}

public protocol HtmlAttribute_sandbox : HtmlAttributes {}
extension HtmlAttribute_sandbox {
    public func sandbox(_ sandbox : [SandBox]? = nil) -> Self {
        if let sandbox = sandbox {
            let allow = " ".join(sandbox.map{$0.rawValue})
            attributesValues.addOnceFor(key: "sandbox", value: allow)
        } else {
            attributesValues.addOnceFor(key: "sandbox", value: "")
        }
        return self
    }
}

public protocol HtmlAttribute_allowfullscreen : HtmlAttributes {}
extension HtmlAttribute_allowfullscreen {
    public func allowfullscreen() -> Self {
        attributesValues.addOnceFor(key: "allowfullscreen", value: "")
        return self
    }
}

public protocol HtmlAttribute_allowpaymentrequest : HtmlAttributes {}
extension HtmlAttribute_allowpaymentrequest {
    public func allowpaymentrequest() -> Self {
        attributesValues.addOnceFor(key: "allowpaymentrequest", value: "")
        return self
    }
}

public protocol HtmlAttribute_data : HtmlAttributes {}
extension HtmlAttribute_data {
    public func data(_ url : String) -> Self {
        attributesValues.addOnceFor(key: "data", value: url)
        return self
    }
}

public protocol HtmlAttribute_typemustmatch : HtmlAttributes {}
extension HtmlAttribute_typemustmatch {
    public func typemustmatch() -> Self {
        attributesValues.addOnceFor(key: "typemustmatch", value: "")
        return self
    }
}

public protocol HtmlAttribute_preload : HtmlAttributes {}
extension HtmlAttribute_preload {
    func preload(_ preload : HtmlMediaPreload) -> Self {
        attributesValues.addOnceFor(key: "preload", value: preload.rawValue)
        return self
    }
}

public protocol HtmlAttribute_autoplay : HtmlAttributes {}
extension HtmlAttribute_autoplay {
    func autoplay() -> Self {
        attributesValues.addOnceFor(key: "autoplay", value: "")
        return self
    }
}

public protocol HtmlAttribute_loop : HtmlAttributes {}
extension HtmlAttribute_loop {
    func loop() -> Self {
        attributesValues.addOnceFor(key: "loop", value: "")
        return self
    }
}

public protocol HtmlAttribute_muted : HtmlAttributes {}
extension HtmlAttribute_muted {
    func muted() -> Self {
        attributesValues.addOnceFor(key: "muted", value: "")
        return self
    }
}

public protocol HtmlAttribute_controls : HtmlAttributes {}
extension HtmlAttribute_controls {
    func controls() -> Self {
        attributesValues.addOnceFor(key: "controls", value: "")
        return self
    }
}

public protocol HtmlAttribute_width : HtmlAttributes {}
extension HtmlAttribute_width {
    public func width(_ pixels : Int) -> Self {
        attributesValues.addOnceFor(key: "width", value: String(pixels))
        return self
    }
}

public protocol HtmlAttribute_poster : HtmlAttributes {}
extension HtmlAttribute_poster {
    public func poster(_ poster : String) -> Self {
        attributesValues.addOnceFor(key: "poster", value: poster)
        return self
    }
}

public protocol HtmlAttribute_kind : HtmlAttributes {}
extension HtmlAttribute_kind {
    public func kind(_ kind : TrackKind) -> Self {
        attributesValues.addOnceFor(key: "kind", value: kind.rawValue)
        return self
    }
}

public protocol HtmlAttribute_srclang : HtmlAttributes {}
extension HtmlAttribute_srclang {
    public func srclang(_ srclang : String) -> Self {
        attributesValues.addOnceFor(key: "srclang", value: srclang)
        return self
    }
}

public protocol HtmlAttribute_label : HtmlAttributes {}
extension HtmlAttribute_label {
    public func label(_ label : String) -> Self {
        attributesValues.addOnceFor(key: "label", value: label)
        return self
    }
}

public protocol HtmlAttribute_default : HtmlAttributes {}
extension HtmlAttribute_default {
    public func `default`() -> Self {
        attributesValues.addOnceFor(key: "default", value: "")
        return self
    }
}

public protocol HtmlAttribute_alt : HtmlAttributes {}
extension HtmlAttribute_alt {
    public func alt(_ text : String) -> Self {
        attributesValues.addOnceFor(key: "alt", value: text)
        return self
    }
}

public protocol HtmlAttribute_coords : HtmlAttributes {}
extension HtmlAttribute_coords {
    public func coords(_ coords : String) -> Self {
        attributesValues.addOnceFor(key: "coords", value: coords)
        return self
    }
}

public protocol HtmlAttribute_href : HtmlAttributes {}
extension HtmlAttribute_href {
    public func href(_ url : String) -> Self {
        attributesValues.addOnceFor(key: "href", value: url)
        return self
    }
}

public protocol HtmlAttribute_shape : HtmlAttributes {}
extension HtmlAttribute_shape {
    public func shape(_ shape : Shape) -> Self {
        attributesValues.addOnceFor(key: "shape", value: shape.rawValue)
        return self
    }
}

public protocol HtmlAttribute_target : HtmlAttributes {}
extension HtmlAttribute_target {
    public func target(_ target: HtmlTarget) -> Self {
        attributesValues.addOnceFor(key: "target", value: target.rawValue)
        return self
    }
}

public protocol HtmlAttribute_acceptCharset : HtmlAttributes {}
extension HtmlAttribute_acceptCharset {
    public func acceptCharset(_ charset: String) -> Self {
        attributesValues.addOnceFor(key: "accept-charset", value: charset)
        return self
    }
}

public protocol HtmlAttribute_action : HtmlAttributes {}
extension HtmlAttribute_action {
    public func action(_ url: String) -> Self {
        attributesValues.addOnceFor(key: "action", value: url)
        return self
    }
}

public protocol HtmlAttribute_enctype : HtmlAttributes {}
extension HtmlAttribute_enctype {
    public func enctype(_ enctype: HtmlFormEnctype) -> Self {
        attributesValues.addOnceFor(key: "enctype", value: enctype.rawValue)
        return self
    }
}

public protocol HtmlAttribute_method : HtmlAttributes {}
extension HtmlAttribute_method {
    public func method(_ method: HtmlFormMethod) -> Self {
        attributesValues.addOnceFor(key: "method", value: method.rawValue)
        return self
    }
}

public protocol HtmlAttribute_novalidate : HtmlAttributes {}
extension HtmlAttribute_novalidate {
    public func novalidate() -> Self {
        attributesValues.addOnceFor(key: "novalidate", value: "")
        return self
    }
}

public protocol HtmlAttribute_accept : HtmlAttributes {}
extension HtmlAttribute_accept {
    public func accept(_ accept: String) -> Self {
        attributesValues.addOnceFor(key: "accept", value: accept)
        return self
    }
}

public protocol HtmlAttribute_checked : HtmlAttributes {}
extension HtmlAttribute_checked {
    public func checked() -> Self {
        attributesValues.addOnceFor(key: "checked", value: "")
        return self
    }
}

public protocol HtmlAttribute_formaction : HtmlAttributes {}
extension HtmlAttribute_formaction {
    public func formaction(_ url: String) -> Self {
        attributesValues.addOnceFor(key: "formaction", value: url)
        return self
    }
}

public protocol HtmlAttribute_formnovalidate : HtmlAttributes {}
extension HtmlAttribute_formnovalidate {
    public func formnovalidate() -> Self {
        attributesValues.addOnceFor(key: "formnovalidate", value: "")
        return self
    }
}

public protocol HtmlAttribute_formtarget : HtmlAttributes {}
extension HtmlAttribute_formtarget {
    public func formtarget(_ target: HtmlTarget) -> Self {
        attributesValues.addOnceFor(key: "formtarget", value: target.rawValue)
        return self
    }
    public func formtarget(framename: String) -> Self {
        attributesValues.addOnceFor(key: "formtarget", value: framename)
        return self
    }
}

public protocol HtmlAttribute_height : HtmlAttributes {}
extension HtmlAttribute_height {
    public func height(_ pixels: Int) -> Self {
        attributesValues.addOnceFor(key: "height", value: String(pixels))
        return self
    }
}

public protocol HtmlAttribute_list : HtmlAttributes {}
extension HtmlAttribute_list {
    public func list(_ datalistId: String) -> Self {
        attributesValues.addOnceFor(key: "list", value: datalistId)
        return self
    }
}

public protocol HtmlAttribute_pattern : HtmlAttributes {}
extension HtmlAttribute_pattern {
    public func pattern(_ regexp: String) -> Self {
        attributesValues.addOnceFor(key: "pattern", value: regexp)
        return self
    }
}

public protocol HtmlAttribute_step : HtmlAttributes {}
extension HtmlAttribute_step {
    public func step(_ interval: Int) -> Self {
        attributesValues.addOnceFor(key: "src", value: String(interval))
        return self
    }
}

public protocol HtmlAttribute_type_input : HtmlAttributes {}
extension HtmlAttribute_type_input {
    public func type(_ type: InputType) -> Self {
        attributesValues.addOnceFor(key: "type", value: type.rawValue)
        return self
    }
}

public protocol HtmlAttribute_formenctype : HtmlAttributes {}
extension HtmlAttribute_formenctype {
    public func formenctype(_ enctype : HtmlFormEnctype) -> Self {
        attributesValues.addOnceFor(key: "formenctype", value: enctype.rawValue)
        return self
    }
}

public protocol HtmlAttribute_formmethod : HtmlAttributes {}
extension HtmlAttribute_formmethod {
    public func formmethod(_ method : HtmlFormMethod) -> Self {
        attributesValues.addOnceFor(key: "formmethod", value: method.rawValue)
        return self
    }
}

public protocol HtmlAttribute_type_button : HtmlAttributes {}
extension HtmlAttribute_type_button {
    public func type(_ type : ButtonType) -> Self {
        attributesValues.addOnceFor(key: "type", value: type.rawValue)
        return self
    }
}

public protocol HtmlAttribute_multiple : HtmlAttributes {}
extension HtmlAttribute_multiple {
    public func multiple() -> Self {
        attributesValues.addOnceFor(key: "multiple", value: "")
        return self
    }
}

public protocol HtmlAttribute_size : HtmlAttributes {}
extension HtmlAttribute_size {
    public func size(_ size : Int) -> Self {
        attributesValues.addOnceFor(key: "size", value: String(size))
        return self
    }
}

public protocol HtmlAttribute_selected : HtmlAttributes {}
extension HtmlAttribute_selected {
    public func selected() -> Self {
        attributesValues.addOnceFor(key: "selected", value: "")
        return self
    }
}

public protocol HtmlAttribute_autocomplete : HtmlAttributes {}
extension HtmlAttribute_autocomplete {
    public func autocomplete(_ autocomplete: Bool) -> Self {
        attributesValues.addOnceFor(key: "autocomplete", value: String(autocomplete))
        return self
    }
}

public protocol HtmlAttribute_autofocus : HtmlAttributes {}
extension HtmlAttribute_autofocus {
    public func autofocus() -> Self {
        attributesValues.addOnceFor(key: "autofocus", value: "")
        return self
    }
}

public protocol HtmlAttribute_cols : HtmlAttributes {}
extension HtmlAttribute_cols {
    public func cols(_ cols : Int) -> Self {
        attributesValues.addOnceFor(key: "cols", value: String(cols))
        return self
    }
}

public protocol HtmlAttribute_dirname : HtmlAttributes {}
extension HtmlAttribute_dirname {
    public func dirname(_ dirname: String) -> Self {
        attributesValues.addOnceFor(key: "dirname", value: dirname)
        return self
    }
}

public protocol HtmlAttribute_maxlength : HtmlAttributes {}
extension HtmlAttribute_maxlength {
    public func maxlength<T : LosslessStringConvertible>(_ length :  T) -> Self {
        attributesValues.addOnceFor(key: "maxlength", value: String(length))
        return self
    }
}

public protocol HtmlAttribute_minlength : HtmlAttributes {}
extension HtmlAttribute_minlength {
    public func minlength<T : LosslessStringConvertible>(_ length: T) -> Self {
        attributesValues.addOnceFor(key: "minlength", value: String(length))
        return self
    }
}

public protocol HtmlAttribute_placeholder : HtmlAttributes {}
extension HtmlAttribute_placeholder {
    public func placeholder(_ text : String) -> Self {
        attributesValues.addOnceFor(key: "placeholder", value: text)
        return self
    }
}

public protocol HtmlAttribute_readonly : HtmlAttributes {}
extension HtmlAttribute_readonly {
    public func readonly() -> Self {
        attributesValues.addOnceFor(key: "readonly", value: "")
        return self
    }
}

public protocol HtmlAttribute_required : HtmlAttributes {}
extension HtmlAttribute_required {
    public func required() -> Self {
        attributesValues.addOnceFor(key: "required", value: "")
        return self
    }
}

public protocol HtmlAttribute_rows : HtmlAttributes {}
extension HtmlAttribute_rows {
    public func rows(_ rows : Int) -> Self {
        attributesValues.addOnceFor(key: "rows", value: String(rows))
        return self
    }
}

public protocol HtmlAttribute_wrap : HtmlAttributes {}
extension HtmlAttribute_wrap {
    public func wrap(_ wrap : WrapType) -> Self {
        attributesValues.addOnceFor(key: "wrap", value: wrap.rawValue)
        return self
    }
}

public protocol HtmlAttribute_for : HtmlAttributes {}
extension HtmlAttribute_for {
    public func `for`(_ tags : String) -> Self {
        attributesValues.addOnceFor(key: "for", value:tags)
        return self
    }
}

public protocol HtmlAttribute_max : HtmlAttributes {}
extension HtmlAttribute_max {
    public func max<T : LosslessStringConvertible>(_ value: T) -> Self {
        attributesValues.addOnceFor(key: "max", value: String(value))
        return self
    }
    public func max(_ date: NSDate) -> Self {
        attributesValues.addOnceFor(key: "max", value: date.description)
        return self
    }
}

public protocol HtmlAttribute_value : HtmlAttributes {}
extension HtmlAttribute_value {
    public func value<T : LosslessStringConvertible>(_ value: T) -> Self {
        attributesValues.addOnceFor(key: "value", value: String(value))
        return self
    }
    public func value(_ date: NSDate) -> Self {
        attributesValues.addOnceFor(key: "value", value: date.description)
        return self
    }
}

public protocol HtmlAttribute_min : HtmlAttributes {}
extension HtmlAttribute_min {
    public func min<T : LosslessStringConvertible>(_ value: T) -> Self {
        attributesValues.addOnceFor(key: "min", value: String(value))
        return self
    }
    public func min(_ date: NSDate) -> Self {
        attributesValues.addOnceFor(key: "min", value: date.description)
        return self
    }
}

public protocol HtmlAttribute_low : HtmlAttributes {}
extension HtmlAttribute_low {
    public func low<T : LosslessStringConvertible>(_ value: T) -> Self {
        attributesValues.addOnceFor(key: "low", value: String(value))
        return self
    }
}

public protocol HtmlAttribute_high : HtmlAttributes {}
extension HtmlAttribute_high {
    public func high<T : LosslessStringConvertible>(_ value: T) -> Self {
        attributesValues.addOnceFor(key: "high", value: String(value))
        return self
    }
}

public protocol HtmlAttribute_optimum : HtmlAttributes {}
extension HtmlAttribute_optimum {
    public func optimum<T : LosslessStringConvertible>(_ value: T) -> Self {
        attributesValues.addOnceFor(key: "optimum", value: String(value))
        return self
    }
}

public protocol HtmlAttribute_disabled : HtmlAttributes {}
extension HtmlAttribute_disabled {
    public func disabled() -> Self {
        attributesValues.addOnceFor(key: "disabled", value: "")
        return self
    }
}

public protocol HtmlAttribute_form : HtmlAttributes {}
extension HtmlAttribute_form {
    public func form(_ formId : String) -> Self {
        attributesValues.addOnceFor(key: "form", value: formId)
        return self
    }
}

public protocol HtmlAttribute_cite : HtmlAttributes {}
extension HtmlAttribute_cite {
    public func cite(_ url: String) -> Self {
        attributesValues.addOnceFor(key: "cite", value: url)
        return self
    }
}

public protocol HtmlAttribute_reversed : HtmlAttributes {}
extension HtmlAttribute_reversed {
    public func reversed() -> Self {
        attributesValues.addOnceFor(key: "reversed", value: "s")
        return self
    }
}

public protocol HtmlAttribute_start : HtmlAttributes {}
extension HtmlAttribute_start {
    public func start(_ number : Int) -> Self {
        attributesValues.addOnceFor(key: "start", value: String(number))
        return self
    }
}

public protocol HtmlAttribute_type_list : HtmlAttributes {}
extension HtmlAttribute_type_list {
    public func type(_ type : ListType) -> Self {
        attributesValues.addOnceFor(key: "type", value: type.rawValue)
        return self
    }
}

public protocol HtmlAttribute_manifest : HtmlAttributes {}
extension HtmlAttribute_manifest {
    public func manifest(_ url: String) -> Self {
        attributesValues.addOnceFor(key: "manifest", value: url)
        return self
    }
}

public protocol HtmlAttribute_open : HtmlAttributes {}
extension HtmlAttribute_open {
    public func open() -> Self {
        attributesValues.addOnceFor(key: "open", value: "")
        return self
    }
}

public protocol HtmlAttribute_crossorigin : HtmlAttributes {}
extension HtmlAttribute_crossorigin {
    public func crossorigin(_ crossorigin : HtmlCrossOrgin) -> Self {
        attributesValues.addOnceFor(key: "crossorigin", value: crossorigin.rawValue)
        return self
    }
}

public protocol HtmlAttribute_rel : HtmlAttributes {}
extension HtmlAttribute_rel {
    public func rel(_ rel : HtmlRelValue...) -> Self {
        let relStr = (rel.count == 1) ? rel[0].rawValue : " ".join(rel.map{$0.rawValue})
        attributesValues.addOnceFor(key: "rel", value: relStr)
        return self
    }
}

public protocol HtmlAttribute_media : HtmlAttributes {}
extension HtmlAttribute_media {
    public func media(_ media : String) -> Self {
        attributesValues.addOnceFor(key: "media", value: media)
        return self
    }
}

public protocol HtmlAttribute_nonce : HtmlAttributes {}
extension HtmlAttribute_nonce {
    public func nonce(_ value: String) -> Self {
        attributesValues.addOnceFor(key: "nonce", value: value)
        return self
    }
}

public protocol HtmlAttribute_hreflang : HtmlAttributes {}
extension HtmlAttribute_hreflang {
    public func hreflang(_ hreflang : String) -> Self {
        attributesValues.addOnceFor(key: "hreflang", value: hreflang)
        return self
    }
}

public protocol HtmlAttribute_referrerpolicy : HtmlAttributes {}
extension HtmlAttribute_referrerpolicy {
    public func referrerpolicy(_ value: String) -> Self {
        attributesValues.addOnceFor(key: "referrerpolicy", value: value)
        return self
    }
}

public protocol HtmlAttribute_sizes : HtmlAttributes {}
extension HtmlAttribute_sizes {
    public func sizes(_ sizes : String) -> Self {
        attributesValues.addOnceFor(key: "sizes", value: sizes)
        return self
    }
}

public protocol HtmlAttribute_name : HtmlAttributes {}
extension HtmlAttribute_name {
    public func name(_ name : HtmlMetaName) -> Self {
        attributesValues.addOnceFor(key: "name", value: name.rawValue)
        return self
    }
    public func name(_ name: String) -> Self {
        attributesValues.addOnceFor(key: "name", value: name)
        return self
    }
}

public protocol HtmlAttribute_httpequiv : HtmlAttributes {}
extension HtmlAttribute_httpequiv {
    public func httpequiv(_ httpequiv : HtmlMetaHttpEquiv) -> Self {
        attributesValues.addOnceFor(key: "http-equiv", value: httpequiv.rawValue)
        return self
    }
}

public protocol HtmlAttribute_content : HtmlAttributes {}
extension HtmlAttribute_content {
    public func content(_ content : String) -> Self {
        attributesValues.addOnceFor(key: "content", value: content)
        return self
    }
}

public protocol HtmlAttribute_charset : HtmlAttributes {}
extension HtmlAttribute_charset {
    public func charset(_ charset : String) -> Self {
        attributesValues.addOnceFor(key: "charset", value: charset)
        return self
    }
}

public protocol HtmlAttribute_type : HtmlAttributes {}
extension HtmlAttribute_type {
    public func type(_ mediaType : HtmlMIMEType) -> Self {
        attributesValues.addOnceFor(key: "type", value: mediaType.rawValue)
        return self
    }
    public func type(_ type : String) -> Self {
        attributesValues.addOnceFor(key: "type", value: type)
        return self
    }
}


public protocol HtmlAttribute_async : HtmlAttributes {}
extension HtmlAttribute_async {
    public func async() -> Self {
        attributesValues.addOnceFor(key: "async", value: "")
        return self
    }
}

public protocol HtmlAttribute_defer : HtmlAttributes {}
extension HtmlAttribute_defer {
    public func `defer`() -> Self {
        attributesValues.addOnceFor(key: "defer", value: "")
        return self
    }
}

public protocol HtmlAttribute_download : HtmlAttributes {}
extension HtmlAttribute_download {
    public func download() -> Self {
        attributesValues.addOnceFor(key: "download", value: "")
        return self
    }
    public func download(_ fileName : String) -> Self {
        attributesValues.addOnceFor(key: "download", value: fileName)
        return self
    }
}

public protocol HtmlAttribute_rev : HtmlAttributes {}
extension HtmlAttribute_rev {
    public func rev(_ rev: String) -> Self {
        attributesValues.addOnceFor(key: "rev", value: rev)
        return self
    }
}

public protocol HtmlAttribute_border : HtmlAttributes {}
extension HtmlAttribute_border {
    public func border() -> Self {
        attributesValues.addOnceFor(key: "border", value: "1")
        return self
    }
}

public protocol HtmlAttribute_span : HtmlAttributes {}
extension HtmlAttribute_span {
    public func span(_ number : Int) -> Self {
        attributesValues.addOnceFor(key: "span", value: String(number))
        return self
    }
}

public protocol HtmlAttribute_rowgroup : HtmlAttributes {}
extension HtmlAttribute_rowgroup {
    public func rowgroup(_ rowgroup: String) -> Self {
        attributesValues.addOnceFor(key: "rowgroup", value: rowgroup)
        return self
    }
}

public protocol HtmlAttribute_row : HtmlAttributes {}
extension HtmlAttribute_row {
    public func row(_ row: String) -> Self {
        attributesValues.addOnceFor(key: "row", value: row)
        return self
    }
}

public protocol HtmlAttribute_colspan : HtmlAttributes {}
extension HtmlAttribute_colspan {
    public func colspan(_ number : Int) -> Self {
        attributesValues.addOnceFor(key: "colspan", value: String(number))
        return self
    }
}

public protocol HtmlAttribute_rowspan : HtmlAttributes {}
extension HtmlAttribute_rowspan {
    public func rowspan(_ number : Int) -> Self {
        attributesValues.addOnceFor(key: "rowspan", value: String(number))
        return self
    }
}

public protocol HtmlAttribute_headers : HtmlAttributes {}
extension HtmlAttribute_headers {
    public func headers(_ headers : String) -> Self {
        attributesValues.addOnceFor(key: "headers", value: headers)
        return self
    }
}

public protocol HtmlAttribute_cell : HtmlAttributes {}
extension HtmlAttribute_cell {
    public func cell(_ cell: String) -> Self {
        attributesValues.addOnceFor(key: "cell", value: cell)
        return self
    }
}

public protocol HtmlAttribute_abbr : HtmlAttributes {}
extension HtmlAttribute_abbr {
    public func abbr(_ text : String) -> Self {
        attributesValues.addOnceFor(key: "abbr", value: text)
        return self
    }
}

public protocol HtmlAttribute_scope : HtmlAttributes {}
extension HtmlAttribute_scope {
    public func scope(_ scope : Scope) -> Self {
        attributesValues.addOnceFor(key: "scope", value: scope.rawValue)
        return self
    }
}

