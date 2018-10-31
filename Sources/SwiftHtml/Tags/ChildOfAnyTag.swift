//
//  ChildOfAnyTag.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 31/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

public protocol ChildOfAnyMetaTag :

    ChildOfTag_head,
    ChildOfTag_title,
    ChildOfTag_style {}


public protocol ChildOfAnyBodyTag :

    // Edits
    ChildOfTag_ins,
    ChildOfTag_del,
    
    // Embedded
    ChildOfTag_picture,
    ChildOfTag_iframe,
    ChildOfTag_object,
    ChildOfTag_video,
    ChildOfTag_audio,
    ChildOfTag_map,
    
    // Forms
    ChildOfTag_form,
    ChildOfTag_label,
    ChildOfTag_button,
    ChildOfTag_select,
    ChildOfTag_datalist,
    ChildOfTag_optgroup,
    ChildOfTag_option,
    ChildOfTag_textarea,
    ChildOfTag_output,
    ChildOfTag_progress,
    ChildOfTag_meter,
    ChildOfTag_fieldset,
    ChildOfTag_legend,
    
    // Grouping
    ChildOfTag_p,
    ChildOfTag_address,
    ChildOfTag_pre,
    ChildOfTag_blockquote,
    ChildOfTag_ol,
    ChildOfTag_ul,
    ChildOfTag_li,
    ChildOfTag_dl,
    ChildOfTag_dt,
    ChildOfTag_dd,
    ChildOfTag_figure,
    ChildOfTag_figcaption,
    ChildOfTag_main,
    ChildOfTag_div,
    
    // html
    childOfTag_html,
    
    // Interactive
    ChildOfTag_details,
    ChildOfTag_summary,
    ChildOfTag_dialog,
    
    // Scripting
    ChildOfTag_script,
    ChildOfTag_noscript,
    ChildOfTag_template,
    ChildOfTag_canvas,
    
    // Sections
    ChildOfTag_body,
    ChildOfTag_article,
    ChildOfTag_section,
    ChildOfTag_nav,
    ChildOfTag_aside,
    ChildOfTag_h1,
    ChildOfTag_h2,
    ChildOfTag_h3,
    ChildOfTag_h4,
    ChildOfTag_h5,
    ChildOfTag_h6,
    ChildOfTag_header,
    ChildOfTag_footer,
    
    // Schematics
    ChildOfTag_a,
    ChildOfTag_em,
    ChildOfTag_strong,
    ChildOfTag_small,
    ChildOfTag_s,
    ChildOfTag_cite,
    ChildOfTag_q,
    ChildOfTag_dfn,
    ChildOfTag_abbr,
    ChildOfTag_ruby,
    ChildOfTag_rb,
    ChildOfTag_rt,
    ChildOfTag_rtc,
    ChildOfTag_rp,
    ChildOfTag_data,
    ChildOfTag_time,
    ChildOfTag_code,
    ChildOfTag_var,
    ChildOfTag_samp,
    ChildOfTag_kbd,
    ChildOfTag_sub,
    ChildOfTag_sup,
    ChildOfTag_i,
    ChildOfTag_b,
    ChildOfTag_u,
    ChildOfTag_mark,
    ChildOfTag_bdi,
    ChildOfTag_bdo,
    ChildOfTag_span,
    
    // TabularData
    ChildOfTag_table,
    ChildOfTag_caption,
    ChildOfTag_colgroup,
    ChildOfTag_tbody,
    ChildOfTag_thead,
    ChildOfTag_tfoot,
    ChildOfTag_tr,
    ChildOfTag_td,
    ChildOfTag_th {}
