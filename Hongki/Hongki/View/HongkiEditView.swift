//
//  HongkiEditView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/29.
//

import SwiftUI

struct HongkiEditView: View {
    @ObservedObject var hongkiVM: HongkiInfoViewModel
    @Binding var showingEditSheet: Bool
    
    let backgrounds: [String] = ["TECH", "DESIGN", "DOMAIN"]
    
    var body: some View {
        VStack {
            ZStack {
                TitleText(title: "HongKi Edit")
                
                Button(action: {
                    hongkiVM.saveInfo()
                    showingEditSheet.toggle()
                }, label: {
                    Text("save")
                        .padding(.trailing, 10)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                })
            }
            
            VStack {
                TitleText(title: "Life Quotes")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(hongkiVM.info.quotes, text: $hongkiVM.info.quotes)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
            }
            .padding(.bottom, 5)
            Divider()
            
            HStack {
                VStack {
                    TitleText(title: "Background")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(hongkiVM.info.background)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                }
                
                Menu(content: {
                    Picker(selection: $hongkiVM.info.background, label: Text("BackgroundPicker")) {
                        ForEach(backgrounds, id: \.self) { item in
                            Text(item)
                        }
                    }
                }, label: {
                    HStack {
                        Text(hongkiVM.info.background)
                        Image(systemName: "arrowtriangle.down.fill")
                    }
                    .padding()
                })
            }
            .padding(.bottom, 5)
            Divider()
            
            VStack {
                TitleText(title: "e-mail")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(hongkiVM.info.email, text: $hongkiVM.info.email)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
            }
            .padding(.bottom, 5)
            Divider()
            
            VStack {
                TitleText(title: "Phone Number")
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(hongkiVM.info.phoneNum, text: $hongkiVM.info.phoneNum)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
            }
            .padding(.bottom, 5)
            Divider()
            
            VStack {
                TitleText(title: "Achievement")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack {
                    Image(systemName: Tab.swift.imageSystemName)
                    Text(Tab.swift.title)
                    Text("\(Int(hongkiVM.info.swiftAchievement))%")
                }
                
                Slider(value: $hongkiVM.info.swiftAchievement, in: 0...100, label: {
                    Text(Tab.swift.title)
                    }, minimumValueLabel: {
                        Text("0")
                    }, maximumValueLabel: {
                        Text("100")
                })
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
                HStack {
                    Image(systemName: Tab.swiftUI.imageSystemName)
                    Text(Tab.swiftUI.title)
                    Text("\(Int(hongkiVM.info.swiftUIAchievement))%")
                }
                
                Slider(value: $hongkiVM.info.swiftUIAchievement, in: 0...100, label: {
                    Text(Tab.swiftUI.title)
                    }, minimumValueLabel: {
                        Text("0")
                    }, maximumValueLabel: {
                        Text("100")
                })
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
                HStack {
                    Image(systemName: Tab.git.imageSystemName)
                    Text(Tab.git.title)
                    Text("\(Int(hongkiVM.info.gitAchievement))%")
                }
                
                Slider(value: $hongkiVM.info.gitAchievement, in: 0...100, label: {
                    Text(Tab.git.title)
                    }, minimumValueLabel: {
                        Text("0")
                    }, maximumValueLabel: {
                        Text("100")
                })
                .padding(.leading, 15)
                .padding(.trailing, 15)
                /*
                AchievemnetRowView(item: Tab.swiftUI, achievement: hongkiVM.info.swiftUIAchievement)
                
                AchievemnetRowView(item: Tab.git, achievement: hongkiVM.info.gitAchievement)*/
                Spacer()
            }
        }
    }
}
/*
struct AchievemnetRowView: View {
    let item: Tab
    @ObservedObject var achievement
    // HongkiVM에서 각 achievement만 바꾸는데
    // HongkiVM 전체를 관찰할 필요가 있을까?
    
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
*/
struct HongkiEditView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
