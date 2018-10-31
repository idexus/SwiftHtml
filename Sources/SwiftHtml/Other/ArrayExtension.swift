//
//  ArrayExtension.swift
//  SwiftHtml
//
//  Created by Pawel Krzywdzinski on 29/10/2018.
//  Copyright (c) 2018 Pawel Krzywdzinski
//

import Foundation


extension Array {
    static public func +=(lhs: inout [Element], rhs: Element) {
        lhs.append(rhs)
    }
}
