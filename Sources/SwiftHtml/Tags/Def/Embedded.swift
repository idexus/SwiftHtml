//
//  Embedded.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


// Embedded
extension Tag {
    public class picture    : HtmlParentTag<ChildOfTag_picture> {}
    public class source     : HtmlSingleTag {}
    public class img        : HtmlSingleTag {}
    public class iframe     : HtmlParentTag<ChildOfTag_iframe> {}
    public class embed      : HtmlSingleTag {}
    public class object     : HtmlParentTag<ChildOfTag_object> {}
    public class param      : HtmlSingleTag {}
    public class video      : HtmlParentTag<ChildOfTag_video> {}
    public class audio      : HtmlParentTag<ChildOfTag_audio> {}
    public class track      : HtmlSingleTag {}
    public class map        : HtmlParentTag<ChildOfTag_map> {}
    public class area       : HtmlSingleTag {}
}

// ------- Type-safety ------

extension Tag.picture   : ChildOfAnyBodyTag {}
extension Tag.source    : ChildOfAnyBodyTag {}
extension Tag.img       : ChildOfAnyBodyTag {}
extension Tag.iframe    : ChildOfAnyBodyTag {}
extension Tag.embed     : ChildOfAnyBodyTag {}
extension Tag.object    : ChildOfAnyBodyTag {}
extension Tag.param     : ChildOfAnyBodyTag {}
extension Tag.video     : ChildOfAnyBodyTag {}
extension Tag.audio     : ChildOfAnyBodyTag {}
extension Tag.track     : ChildOfAnyBodyTag {}
extension Tag.map       : ChildOfAnyBodyTag {}
extension Tag.area      : ChildOfAnyBodyTag {}

// child protocols


public protocol ChildOfTag_picture {}
public protocol ChildOfTag_iframe {}
public protocol ChildOfTag_object {}
public protocol ChildOfTag_video {}
public protocol ChildOfTag_audio {}
public protocol ChildOfTag_map {}

// ------- Attributes -------

// source
extension Tag.source : HtmlAttribute_src {}
extension Tag.source : HtmlAttribute_type {}
extension Tag.source : HtmlAttribute_srcset {}
extension Tag.source : HtmlAttribute_sizes {}
extension Tag.source : HtmlAttribute_media {}

// img
extension Tag.img : HtmlAttribute_alt {}
extension Tag.img : HtmlAttribute_src {}
extension Tag.img : HtmlAttribute_srcset {}
extension Tag.img : HtmlAttribute_sizes {}
extension Tag.img : HtmlAttribute_crossorigin {}
extension Tag.img : HtmlAttribute_usemap {}
extension Tag.img : HtmlAttribute_ismap {}
extension Tag.img : HtmlAttribute_width {}
extension Tag.img : HtmlAttribute_height {}
extension Tag.img : HtmlAttribute_referrerpolicy {}
extension Tag.img : HtmlAttribute_longdesc {}

// iframe
extension Tag.iframe : HtmlAttribute_src {}
extension Tag.iframe : HtmlAttribute_srcdoc {}
extension Tag.iframe : HtmlAttribute_name {}
extension Tag.iframe : HtmlAttribute_sandbox {}
extension Tag.iframe : HtmlAttribute_allowfullscreen {}
extension Tag.iframe : HtmlAttribute_allowpaymentrequest {}
extension Tag.iframe : HtmlAttribute_width {}
extension Tag.iframe : HtmlAttribute_height {}
extension Tag.iframe : HtmlAttribute_referrerpolicy {}

// embed
extension Tag.embed : HtmlAttribute_src {}
extension Tag.embed : HtmlAttribute_type {}
extension Tag.embed : HtmlAttribute_width {}
extension Tag.embed : HtmlAttribute_height {}

// object
extension Tag.object : HtmlAttribute_data {}
extension Tag.object : HtmlAttribute_type {}
extension Tag.object : HtmlAttribute_typemustmatch {}
extension Tag.object : HtmlAttribute_name {}
extension Tag.object : HtmlAttribute_form {}
extension Tag.object : HtmlAttribute_width {}
extension Tag.object : HtmlAttribute_height {}

// param
extension Tag.param : HtmlAttribute_name {}
extension Tag.param : HtmlAttribute_value {}

// video
extension Tag.video : HtmlAttribute_src {}
extension Tag.video : HtmlAttribute_crossorigin {}
extension Tag.video : HtmlAttribute_preload {}
extension Tag.video : HtmlAttribute_autoplay {}
extension Tag.video : HtmlAttribute_loop {}
extension Tag.video : HtmlAttribute_muted {}
extension Tag.video : HtmlAttribute_controls {}
extension Tag.video : HtmlAttribute_width {}
extension Tag.video : HtmlAttribute_height {}
extension Tag.video : HtmlAttribute_poster {}

// audio
extension Tag.audio : HtmlAttribute_src {}
extension Tag.audio : HtmlAttribute_crossorigin {}
extension Tag.audio : HtmlAttribute_preload {}
extension Tag.audio : HtmlAttribute_autoplay {}
extension Tag.audio : HtmlAttribute_loop {}
extension Tag.audio : HtmlAttribute_muted {}
extension Tag.audio : HtmlAttribute_controls {}

// track
extension Tag.track : HtmlAttribute_kind {}
extension Tag.track : HtmlAttribute_src {}
extension Tag.track : HtmlAttribute_srclang {}
extension Tag.track : HtmlAttribute_label {}
extension Tag.track : HtmlAttribute_default {}

// map
extension Tag.map : HtmlAttribute_name {}

// area
extension Tag.area : HtmlAttribute_alt {}
extension Tag.area : HtmlAttribute_coords {}
extension Tag.area : HtmlAttribute_download {}
extension Tag.area : HtmlAttribute_href {}
extension Tag.area : HtmlAttribute_hreflang {}
extension Tag.area : HtmlAttribute_rel {}
extension Tag.area : HtmlAttribute_shape {}
extension Tag.area : HtmlAttribute_target {}
extension Tag.area : HtmlAttribute_type {}
extension Tag.area : HtmlAttribute_referrerpolicy {}

