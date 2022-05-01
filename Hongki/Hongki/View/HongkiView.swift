//
//  HongkiView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct HongkiView: View {
    @StateObject var hongkiVM = HongkiInfoViewModel()
    @State private var showingEditSheet: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                TitleText(title: "HongKi")
                
                Button(action: {
                    showingEditSheet = true
                }, label: {
                    Image(systemName: "square.and.pencil")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 15)
                }).sheet(isPresented: $showingEditSheet, content: {
                    HongkiEditView(hongkiVM: hongkiVM, showingEditSheet: $showingEditSheet)
                })
            }
            
            Image("HongkiMemoji")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            
            Group {
                HStack {
                    Image(systemName: "quote.opening")
                        .padding(.leading, 10)
                    Text(hongkiVM.info.quotes)
                        .frame( maxWidth: .infinity, alignment: .center)
                    .font(.title)
                    Image(systemName: "quote.closing")
                        .padding(.trailing, 10)
                }
            
                VStack(alignment: .leading) {
                    Text(hongkiVM.info.background)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(2)
                    Text(hongkiVM.info.email)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(2)
                    Text(hongkiVM.info.phoneNum)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(2)
                }
                .padding(.leading, 15)
                .foregroundColor(Color("PureBlue"))
            
                VStack {
                    Text("Achievement")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 5)
                        .padding(.leading, 15)
                    
                    Divider()
                    
                    HStack {
                        AchievementItem(title: "Swift", icon: Tab.swift.imageSystemName, achievement: hongkiVM.info.swiftAchievement)
                        Divider()
                        AchievementItem(title: "SwiftUI", icon: Tab.swiftUI.imageSystemName, achievement: hongkiVM.info.swiftUIAchievement)
                        Divider()
                        AchievementItem(title: "Git", icon: Tab.git.imageSystemName, achievement: hongkiVM.info.gitAchievement)
                    }
                }
            }
            .padding(5)
            .frame(maxWidth: .infinity)
            .background(Color("WhiteSmoke"))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(10)
            
            Spacer()
        }
    }
}

struct AchievementItem: View {
    let title: String
    let icon: String
    let achievement: Double
    var body: some View {
        Spacer()
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
            
            Text(title)
            
            HStack {
                Text(String(Int(achievement)))
                    .bold()
                    .padding(0)
                    .font(.largeTitle)
                    .foregroundColor(Color(color))
                Text("%")
                    .padding(0)
                    .foregroundColor(Color("BlackCharcoal"))
            }
        }
        Spacer()
    }
    
    var color: String {
        if self.achievement > 80 {
            return "Emerald"
        } else if achievement < 40 {
            return "TangerineTango"
        } else {
            return "Mimosa"
        }
        
    }
    
}
