//
//  HongkiEditView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

struct HongkiEditView: View {
    @State var quotes: String = "vivi가 보고있다"
    @State var email: String = "kiwhong22@pos.idserve.net"
    @State var phoneNum: String = "010-1234-5678"
    @State var swiftAchievement: Double = 10
    @State var swiftUIAchievement: Double = 10
    @State var gitAchievement: Double = 10
    
    var body: some View {
        VStack {
            TitleText(title: "HongKi Edit")
            VStack {
                TitleText(title: "Life Quotes")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(quotes, text: $quotes)
                    .padding(.leading, 10)
            }
            
            HStack {
                VStack {
                TitleText(title: "Background")
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            
            VStack {
                TitleText(title: "e-mail")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(email, text: $email)
                    .padding(.leading, 10)
            }
            
            VStack {
                TitleText(title: "Phone Number")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(phoneNum, text: $phoneNum)
                    .padding(.leading, 10)
            }
            
            VStack {
                TitleText(title: "Achievement")
                    .frame(maxWidth: .infinity, alignment: .leading)
            
                AchievemnetRowView(item: Tab.swift, achievement: swiftAchievement)
                
                AchievemnetRowView(item: Tab.swiftUI, achievement: swiftUIAchievement)
                
                AchievemnetRowView(item: Tab.git, achievement: gitAchievement)
                Spacer()
            }
        }
    }
}

struct AchievemnetRowView: View {
    let item: Tab
    @State var achievement: Double
    
    var body: some View {
        
        HStack {
            Image(systemName: item.imageSystemName)
            Text(item.title)
            Text("\(Int(achievement))%")
        }
        
        Slider(value: $achievement, in: 0...100, label: {
            Text(item.title)
            }, minimumValueLabel: {
                Text("0")
            }, maximumValueLabel: {
                Text("100")
        })
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct HongkiEditView_Previews: PreviewProvider {
    static var previews: some View {
        HongkiEditView()
    }
}
