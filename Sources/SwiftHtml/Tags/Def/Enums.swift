//
//  Enums.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 25/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

public enum HtmlTagDir: String {
    case ltr
    case rtl
    case auto
}

public enum HtmlTarget: String {
    case blank = "_blank"
    case `self` = "_self"
    case parent = "_parent"
    case top = "_top"
}

public enum HtmlCrossOrgin : String {
    case anonymous
    case useCredentials = "use-credentials"
}


public enum HtmlFormEnctype: String {
    case urlEncoded = "application/x-www-form-urlencoded"
    case multipartFormData = "multipart/form-data"
    case textPlain = "text/plain"
}

public enum HtmlFormMethod: String {
    case get
    case post
    case dialog
}

// ---- MIME types

public enum HtmlMIMEText : String {
    case plain = "text/plain"
    case html = "text/html"
    case css = "text/css"
    case javascript = "text/javascript"
}

public enum HtmlMIMEImage : String {
    case gif = "image/gif"
    case png = "image/png"
    case jpeg = "image/jpeg"
    case bmp = "image/bmp"
    case webp = "image/webp"
    case xicon = "image/x-icon"
    case vndMicrosoftIcon = "image/vnd.microsoft.icon"
}

public enum HtmlMIMEAudio : String {
    case midi = "audio/midi"
    case mpeg = "audio/mpeg"
    case webm = "audio/webm"
    case ogg = "audio/ogg"
    case wav = "audio/wav"
}

public enum HtmlMIMEVideo : String {
    case webm = "video/webm"
    case ogg = "video/ogg"
    case mp4 = "video/mp4"
}

public enum HtmlMIMEType : RawRepresentable {
    public typealias RawValue = String
    
    case text(HtmlMIMEText)
    case image(HtmlMIMEImage)
    case audio(HtmlMIMEAudio)
    case video(HtmlMIMEVideo)
    case strValue(String)
    
    public init?(rawValue: String) { return nil }
    public var rawValue: String {
        switch self {
        case let .text(value): return value.rawValue
        case let .image(value): return value.rawValue
        case let .audio(value): return value.rawValue
        case let .video(value): return value.rawValue
        case let .strValue(value): return value
        }
    }
}

public enum SandBox : String {
    case allowForms = "allow-forms"
    case allowPointerLock = "allow-pointer-lock"
    case allowPopups = "allow-popups"
    case allowSameOrigin = "allow-same-origin"
    case allowScripts = "allow-scripts"
    case allowTopNavigation = "allow-top-navigation"
}

public enum HtmlMediaPreload : String {
    case auto
    case metadata
    case none
}

public enum TrackKind : String {
    case captions
    case chapters
    case descriptions
    case metadata
    case subtitles
}

public enum Shape : String {
    case `default`
    case rect
    case circle
    case poly
}

public enum InputType: String {
    case button
    case checkbox
    case color
    case date
    case datetime
    case datetimeLocal = "datetime-local"
    case email
    case file
    case hidden
    case image
    case month
    case number
    case password
    case radio
    case range
    case reset
    case search
    case submit
    case tel
    case text
    case time
    case url
    case week
}

public enum ButtonType : String {
    case button
    case submit
    case reset
}

public enum WrapType : String {
    case soft
    case hard
}

public enum ListType : String {
    case list_1 = "1"
    case list_A = "A"
    case list_a = "a"
    case list_I = "I"
    case list_i = "i"
}

public enum HtmlRelValue : String {
    case alternate
    case archives
    case author
    case bookmark
    case external
    case first
    case help
    case icon
    case last
    case license
    case next
    case nofollow
    case noreferrer
    case pingback
    case prefetch
    case prev
    case search
    case sidebar
    case stylesheet
    case tag
    case up
    case shortcut
}

public enum HtmlMetaName : String {
    case applicationName = "application-name"
    case author
    case description
    case generator
    case keywords
    case viewport
}

public enum HtmlMetaHttpEquiv : String {
    case contentType = "content-type"
    case defaultStyle = "default-style"
    case refresh
}

public enum Scope : String {
    case col
    case colgroup
    case row
    case rowgroup
}
