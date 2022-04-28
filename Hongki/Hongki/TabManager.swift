//
//  TabManager.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

enum Tab: CaseIterable {
    // CaseIterable
    case home
    case swift
    case swiftUI
    case git
    case hongki
    
    var title: String {
        switch self {
        case .home : return "Home"
        case .swift : return "swift"
        case .swiftUI : return "swiftUI"
        case .git : return "git"
        case .hongki : return "HongKi"
        }
    }
    
    var imageSystemName: String {
        switch self {
        case .home : return "house"
        case .swift : return "swift"
        case .swiftUI : return "uiwindow.split.2x1"
        case .git : return "app.connected.to.app.below.fill"
        case .hongki : return "person.fill.checkmark"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .home : HomeView()
        case .swift : SwiftListView()
        case .swiftUI : SwiftUIListView()
        case .git : GitListView()
        case .hongki : HongkiView()
        }
    }
    
}
