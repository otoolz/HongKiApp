//
//  HongkiView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct HongkiView: View {
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
                    HongkiEditView()
                })
            }
            
            Image("HongkiMemoji")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            
            Group {
                HStack {
                    Text("􁈏 " + "vivi가 보고있다" + "􁈐")
                        .frame( maxWidth: .infinity, alignment: .center)
                    .font(.title)
                }
            
                VStack(alignment: .leading) {
                    Text("TECH")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(2)
                    Text("kiwhong22@pos.idserve.net")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(2)
                    Text("010-7101-6000")
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
                        AchievementItem(title: "Swift", icon: "swift", achievement: 99)
                        Divider()
                        AchievementItem(title: "SwiftUI", icon: "uiwindow.split.2x1", achievement: 20)
                        Divider()
                        AchievementItem(title: "Git", icon: Tab.git.imageSystemName, achievement: 79)
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
    let achievement: Int
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
            
            Text(title)
            
            Text(String(achievement) + "%")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color(color))
        }
        .padding()
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
