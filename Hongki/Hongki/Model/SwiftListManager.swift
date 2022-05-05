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
    case method
    case properties
    case concurrency
    case codable
    
    var iconName: String {
        switch self {
        case .enumKeyword : return "greetingcard"
        case .colloectionType : return "books.vertical"
        case .method : return "cube"
        case .properties : return "shippingbox.circle"
        case .concurrency : return "clock.badge.exclamationmark.fill"
        case .codable : return "doc.badge.gearshape"
        }
    }
    
    var title: String {
        switch self {
        case .enumKeyword : return "Enumerations"
        case .colloectionType : return "CollectionType"
        case .method : return "InstanceMethod"
        case .properties : return "Computedproperties"
        case .concurrency : return "Async/Await"
        case .codable : return "Codable"
        }
    }
    
    var description: String {
        switch self {
        case .enumKeyword : return "Let's study Enumerations"
        case .colloectionType : return "Let's study CollectionType"
        case .method : return "Let's study InstanceMethod"
        case .properties : return "Let's study Properties"
        case .concurrency : return "Let's study Async/Await"
        case .codable : return "Encoding and Decoding your custum type"
        }
    }
    
    var doc: String {
        switch self {
        case .enumKeyword : return "https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html"
        case .colloectionType : return "https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html"
        case .method : return "https://docs.swift.org/swift-book/LanguageGuide/Methods.html"
        case .properties : return "https://docs.swift.org/swift-book/LanguageGuide/Properties.html"
        case .concurrency : return "https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html"
        case .codable : return "https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types"
        }
    }
}
            
