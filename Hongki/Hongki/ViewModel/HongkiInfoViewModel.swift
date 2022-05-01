//
//  HongkiInfoViewModel.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/01.
//

import Foundation

class HongkiInfoViewModel: ObservableObject {
    
    @Published var info = HongkiInfo(quotes: "vivi가 보고있다",
                                     email: "kiwhong22@pos.idserve.net",
                                     phoneNum: "010-7101-6000",
                                     swiftAchievement: 60,
                                     swiftUIAchievement: 90,
                                     gitAchievement: 30,
                                     background: "TECH")
    
    init() {
    }
}
