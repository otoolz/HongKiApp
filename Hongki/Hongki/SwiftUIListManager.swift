//
//  SwiftUIListManager.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

enum SwiftUI: CaseIterable {
    case stack
    case grid
    case alert
    case actionSheet
    case picker
    
    
    var iconName: String {
        switch self {
        case .stack : return "square.stack.3d.up"
        case .grid : return "square.grid.3x2"
        case .alert : return "exclamationmark.square"
        case .actionSheet : return "hand.tap.fill"
        case .picker : return "checkmark.circle"
        }
       
    }
    
    var title: String {
        switch self {
        case .stack : return "Stack"
        case .grid : return "Grid"
        case .alert : return "Alert"
        case .actionSheet : return "ActionSheet"
        case .picker : return "Picker"
        }
    }
    
    var description: String {
        switch self {
        case .stack : return "Let's see Stack"
        case .grid : return "Let's see Grid"
        case .alert : return "Let's see Alert"
        case .actionSheet : return "Let's see ActionSheet"
        case .picker : return "Let's see Picker"
        }
    }
    
}
