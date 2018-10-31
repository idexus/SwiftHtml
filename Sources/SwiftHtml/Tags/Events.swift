//
//  Events.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 30/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation

// ----- Main

public protocol HtmlRootEvents : HtmlAttributes {}
extension HtmlRootEvents {
    public func onabort(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onabort", value: script)
        return self
    }
    
    public func onauxclick(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onauxclick", value: script)
        return self
    }
    
    public func onblur(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onblur", value: script)
        return self
    }
    
    public func oncancel(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "oncancel", value: script)
        return self
    }
    
    public func oncanplay(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "oncanplay", value: script)
        return self
    }
    
    public func oncanplaythrough(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "oncanplaythrough", value: script)
        return self
    }
    
    public func onchange(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onchange", value: script)
        return self
    }
    
    public func onclick(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onclick", value: script)
        return self
    }
    
    public func onclose(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onclose", value: script)
        return self
    }
    
    public func oncuechange(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "oncuechange", value: script)
        return self
    }
    
    public func ondblclick(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondblclick", value: script)
        return self
    }
    
    public func ondrag(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondrag", value: script)
        return self
    }
    
    public func ondragend(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondragend", value: script)
        return self
    }
    
    public func ondragenter(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondragenter", value: script)
        return self
    }
    
    public func ondragexit(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondragexit", value: script)
        return self
    }
    
    public func ondragleave(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondragleave", value: script)
        return self
    }
    
    public func ondragover(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondragover", value: script)
        return self
    }
    
    public func ondragstart(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondragstart", value: script)
        return self
    }
    
    public func ondrop(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondrop", value: script)
        return self
    }
    
    public func ondurationchange(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ondurationchange", value: script)
        return self
    }
    
    public func onemptied(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onemptied", value: script)
        return self
    }
    
    public func onended(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onended", value: script)
        return self
    }
    
    public func onerror(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onerror", value: script)
        return self
    }
    
    public func onfocus(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onfocus", value: script)
        return self
    }
    
    public func oninput(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "oninput", value: script)
        return self
    }
    
    public func oninvalid(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "oninvalid", value: script)
        return self
    }
    
    public func onkeydown(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onkeydown", value: script)
        return self
    }
    
    public func onkeypress(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onkeypress", value: script)
        return self
    }
    
    public func onkeyup(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onkeyup", value: script)
        return self
    }
    
    public func onload(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onload", value: script)
        return self
    }
    
    public func onloadeddata(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onloadeddata", value: script)
        return self
    }
    
    public func onloadedmetadata(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onloadedmetadata", value: script)
        return self
    }
    
    public func onloadend(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onloadend", value: script)
        return self
    }
    
    public func onloadstart(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onloadstart", value: script)
        return self
    }
    
    public func onmousedown(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmousedown", value: script)
        return self
    }
    
    public func onmouseenter(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmouseenter", value: script)
        return self
    }
    
    public func onmouseleave(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmouseleave", value: script)
        return self
    }
    
    public func onmousemove(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmousemove", value: script)
        return self
    }
    
    public func onmouseout(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmouseout", value: script)
        return self
    }
    
    public func onmouseover(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmouseover", value: script)
        return self
    }
    
    public func onmouseup(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onmouseup", value: script)
        return self
    }
    
    public func onwheel(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onwheel", value: script)
        return self
    }
    
    public func onpause(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onpause", value: script)
        return self
    }
    
    public func onplay(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onplay", value: script)
        return self
    }
    
    public func onplaying(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onplaying", value: script)
        return self
    }
    
    public func onprogress(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onprogress", value: script)
        return self
    }
    
    public func onratechange(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onratechange", value: script)
        return self
    }
    
    public func onreset(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onreset", value: script)
        return self
    }
    
    public func onresize(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onresize", value: script)
        return self
    }
    
    public func onscroll(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onscroll", value: script)
        return self
    }
    
    public func onseeked(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onseeked", value: script)
        return self
    }
    
    public func onseeking(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onseeking", value: script)
        return self
    }
    
    public func onselect(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onselect", value: script)
        return self
    }
    
    public func onshow(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onshow", value: script)
        return self
    }
    
    public func onstalled(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onstalled", value: script)
        return self
    }
    
    public func onsubmit(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onsubmit", value: script)
        return self
    }
    
    public func onsuspend(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onsuspend", value: script)
        return self
    }
    
    public func ontimeupdate(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ontimeupdate", value: script)
        return self
    }
    
    public func ontoggle(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "ontoggle", value: script)
        return self
    }
    
    public func onvolumechange(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onvolumechange", value: script)
        return self
    }
    
    public func onwaiting(_ script: String) -> Self {
        attributesValues.addOnceFor(key: "onwaiting", value: script)
        return self
    }
}

// ----- Other

public protocol HtmlEvent_onsearch : HtmlAttributes {}
extension HtmlEvent_onsearch {
    public func onsearch(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onsearch", value: script)
        return self
    }
}

public protocol HtmlEvent_onafterprint : HtmlAttributes {}
extension HtmlEvent_onafterprint {
    public func onafterprint(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onafterprint", value: script)
        return self
    }
}

public protocol HtmlEvent_onbeforeprint : HtmlAttributes {}
extension HtmlEvent_onbeforeprint {
    public func onbeforeprint(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "addoncefor", value: script)
        return self
    }
}

public protocol HtmlEvent_onbeforeunload : HtmlAttributes {}
extension HtmlEvent_onbeforeunload {
    public func onbeforeunload(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onbeforeunload", value: script)
        return self
    }
}

public protocol HtmlEvent_onhashchange : HtmlAttributes {}
extension HtmlEvent_onhashchange {
    public func onhashchange(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onhashchange", value: script)
        return self
    }
}

public protocol HtmlEvent_onlanguagechange : HtmlAttributes {}
extension HtmlEvent_onlanguagechange {
    public func onlanguagechange(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onlanguagechange", value: script)
        return self
    }
}

public protocol HtmlEvent_onmessage : HtmlAttributes {}
extension HtmlEvent_onmessage {
    public func onmessage(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onmessage", value: script)
        return self
    }
}

public protocol HtmlEvent_onoffline : HtmlAttributes {}
extension HtmlEvent_onoffline {
    public func onoffline(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onoffline", value: script)
        return self
    }
}

public protocol HtmlEvent_ononline : HtmlAttributes {}
extension HtmlEvent_ononline {
    public func ononline(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "ononline", value: script)
        return self
    }
}

public protocol HtmlEvent_onpagehide : HtmlAttributes {}
extension HtmlEvent_onpagehide {
    public func onpagehide(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onpagehide", value: script)
        return self
    }
}

public protocol HtmlEvent_onpageshow : HtmlAttributes {}
extension HtmlEvent_onpageshow {
    public func onpageshow(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onpageshow", value: script)
        return self
    }
}

public protocol HtmlEvent_onpopstate : HtmlAttributes {}
extension HtmlEvent_onpopstate {
    public func onpopstate(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onpopstate", value: script)
        return self
    }
}

public protocol HtmlEvent_onrejectionhandled : HtmlAttributes {}
extension HtmlEvent_onrejectionhandled {
    public func onrejectionhandled(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onrejectionhandled", value: script)
        return self
    }
}

public protocol HtmlEvent_onstorage : HtmlAttributes {}
extension HtmlEvent_onstorage {
    public func onstorage(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onstorage", value: script)
        return self
    }
}

public protocol HtmlEvent_onunhandledrejection : HtmlAttributes {}
extension HtmlEvent_onunhandledrejection {
    public func onunhandledrejection(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onunhandledrejection", value: script)
        return self
    }
}

public protocol HtmlEvent_onunload : HtmlAttributes {}
extension HtmlEvent_onunload {
    public func onunload(_ script : String) -> Self {
        attributesValues.addOnceFor(key: "onunload", value: script)
        return self
    }
}
