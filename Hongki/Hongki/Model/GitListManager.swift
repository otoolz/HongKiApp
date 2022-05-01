//
//  GitListManager.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI


enum Git: CaseIterable {
    case setup
    case startProject
    case makeChange
    case basicConcept
    case branches
    case mergingBranch
    case rebasing
    case undoingThings
    case reviewRepo
    case stashing
    case synchronizing
    
    var iconName: String {
        switch self {
        case .setup : return "mail.stack"
        case .startProject : return "tray"
        case .makeChange : return "arrowshape.zigzag.right"
        case .basicConcept : return "brain"
        case .branches : return "arrow.triangle.branch"
        case .mergingBranch : return "arrow.triangle.merge"
        case .rebasing : return "arrow.left.arrow.right"
        case .undoingThings : return "arrow.uturn.backward"
        case .reviewRepo : return "doc.text.magnifyingglass"
        case .stashing : return "archivebox"
        case .synchronizing : return "arrow.triangle.2.circlepath.camera"
        }
    }
    
    var title: String {
        switch self {
        case .setup : return "Set Up"
        case .startProject : return "Start a Project"
        case .makeChange : return "Make a Change"
        case .basicConcept : return "Basic Concept"
        case .branches : return "Branch"
        case .mergingBranch : return "Merging branch"
        case .rebasing : return "Rebasing"
        case .undoingThings : return "Undoing Things"
        case .reviewRepo : return "Review my Repo"
        case .stashing : return "Stashing"
        case .synchronizing : return "Synchronizing"
        }
    }
    
    var description: String {
        switch self {
        case .setup : return "How to set the name and email"
        case .startProject : return "Create a local repo"
        case .makeChange : return "How to add a file and commit"
        case .basicConcept : return "Basic git concept"
        case .branches : return "branch basic"
        case .mergingBranch : return "how to merge branch"
        case .rebasing : return "rebasing feature branch onto main"
        case .undoingThings : return "how to undo git things"
        case .reviewRepo : return "Review my Repo"
        case .stashing : return "Store modified & staged changes"
        case .synchronizing : return "how to synchronize git"
        }
    }
}
