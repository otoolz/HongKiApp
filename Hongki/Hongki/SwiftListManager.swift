//
//  SwiftListManager.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

enum Swift: CaseIterable {
    case enumKeyword
    case colloectionType
    case instanceMethod
    case storedProperties
    case computedProperties
    case propertyWrappers
    case typeProperties
    case asyncAwait
    
    var iconName: String {
        switch self {
        case .enumKeyword : return "greetingcard"
        case .colloectionType : return "books.vertical"
        case .instanceMethod : return "cube"
        case .storedProperties : return "tray.full"
        case .computedProperties : return "gearshape.2"
        case .propertyWrappers : return "shippingbox.circle"
        case .typeProperties : return "scale.3d"
        case .asyncAwait : return "clock.badge.exclamationmark.fill"
        }
    }
    
    var title: String {
        switch self {
        case .enumKeyword : return "Enumerations"
        case .colloectionType : return "CollectionType"
        case .instanceMethod : return "InstanceMethod"
        case .storedProperties : return "StoredProperties"
        case .computedProperties : return "Computedproperties"
        case .propertyWrappers : return "propertyWrappers"
        case .typeProperties : return "TypeProperties"
        case .asyncAwait : return "Async/Await"
        }
    }
    
    var description: String {
        switch self {
        case .enumKeyword : return "Let's study Enumerations"
        case .colloectionType : return "Let's study CollectionType"
        case .instanceMethod : return "Let's study InstanceMethod"
        case .storedProperties : return "Let's study StoredProperties"
        case .computedProperties : return "Let's study Computedproperties"
        case .propertyWrappers : return "Let's study propertyWrappers"
        case .typeProperties : return "Let's study TypeProperties"
        case .asyncAwait : return "Let's study Async/Await"
        }
    }
}
            
