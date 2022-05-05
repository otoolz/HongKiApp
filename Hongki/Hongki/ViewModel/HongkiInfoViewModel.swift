//
//  HongkiInfoViewModel.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/05/01.
//

import Foundation

class HongkiInfoViewModel: ObservableObject {
    
    @Published var info = HongkiInfo(
        quotes: UserDefaults.standard.string(forKey: "quotes") ?? "vivi가 보고있다",
        email: UserDefaults.standard.string(forKey: "email") ?? "kiwhong22@pos.idserve.net",
        phoneNum: UserDefaults.standard.string(forKey: "phoneNum") ?? "010-7101-6000",
        swiftAchievement: UserDefaults.standard.double(forKey: "swiftAchievement") ,
        swiftUIAchievement: UserDefaults.standard.double(forKey: "swiftUIAchievement") ,
        gitAchievement: UserDefaults.standard.double(forKey: "gitAchievement") ,
        background: UserDefaults.standard.string(forKey: "background") ?? "TECH")
    
//    @Published var info: HongkiInfo = load("hongki")
    
    init() {
    }
    
    func saveInfo() {
        UserDefaults.standard.set(info.quotes, forKey: "quotes")
        UserDefaults.standard.set(info.email, forKey: "email")
        UserDefaults.standard.set(info.phoneNum, forKey: "phoneNum")
        UserDefaults.standard.set(info.swiftAchievement, forKey: "swiftAchievement")
        UserDefaults.standard.set(info.swiftUIAchievement, forKey: "swiftUIAchievement")
        UserDefaults.standard.set(info.gitAchievement, forKey: "gitAchievement")
        UserDefaults.standard.set(info.background, forKey: "background")
        
    }
}
/*
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json" ) else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

func save(data: HongkiInfo) {
    let jsonEncoder = JSONEncoder()
    let url: URL = URL(fileURLWithPath: "hongki.json")
    
    do {
        let encodedData = try jsonEncoder.encode(data)
        
        try encodedData.write(to: url, options: .atomic)
        print(String(data: encodedData, encoding: .utf8)!)
        
    } catch {
        print(error)
    }
}*/
