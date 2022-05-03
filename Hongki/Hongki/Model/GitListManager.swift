//
//  GitListManager.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI


enum Git: CaseIterable {
    case gitFlow
    case start
    case makeChange
    case branches
    case mergingBranch
    case rebasing
    case undoing
    case reviewRepo
    case stashing
    case synchronizing
    
    var iconName: String {
        switch self {
        case .gitFlow : return "wind"
        case .start : return "tray"
        case .makeChange : return "arrowshape.zigzag.right"
        case .branches : return "arrow.triangle.branch"
        case .mergingBranch : return "arrow.triangle.merge"
        case .rebasing : return "arrow.left.arrow.right"
        case .undoing : return "arrow.uturn.backward"
        case .reviewRepo : return "eyes.inverse"
        case .stashing : return "shield.lefthalf.filled"
        case .synchronizing : return "arrow.triangle.2.circlepath.circle"
        }
    }
    
    var title: String {
        switch self {
        case .gitFlow : return "Git Flow"
        case .start : return "Start a Project"
        case .makeChange : return "Make a Change"
        case .branches : return "Branch"
        case .mergingBranch : return "Merging branch"
        case .rebasing : return "Rebasing"
        case .undoing : return "Undoing Things"
        case .reviewRepo : return "Review Repo"
        case .stashing : return "Stashing"
        case .synchronizing : return "Synchronizing"
        }
    }
    
    var description: String {
        switch self {
        case .gitFlow : return "Branching workflows"
        case .start : return "Create a local repo"
        case .makeChange : return "How to add a file and commit"
        case .branches : return "branch basic"
        case .mergingBranch : return "how to merge branch"
        case .rebasing : return "rebasing feature branch onto main"
        case .undoing : return "undoing you did things"
        case .reviewRepo : return "review your repo"
        case .stashing : return "git stashing"
        case .synchronizing : return "repo synchronizing"
        }
    }
    
    var pageTitle: String {
        switch self {
        case .gitFlow : return "git_flow"
        case .start : return "git_start"
        case .makeChange : return "git_change"
        case .branches : return "git_branch"
        case .mergingBranch : return "git_merge"
        case .rebasing : return "git_rebasing"
        case .undoing : return "git_undoing"
        case .reviewRepo : return "git_reviewRepo"
        case .stashing : return "git_stashing"
        case .synchronizing : return "git_synchronizing"
        }
    }
}
