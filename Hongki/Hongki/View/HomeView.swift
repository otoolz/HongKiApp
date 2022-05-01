//
//  HomeView.swift
//  Hongki
//
//  Created by KiWoong Hong on 2022/04/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            TitleText(title: "App intro")
            
            TabView {
                VStack {
                    Image("Think")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390, height: 500, alignment: .bottom)
                        .clipped()
                    Text("What's your App?")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                        .padding(.leading, 10)
                    Text("이 프로젝트는 나노챌린지 기간 중 학습했던 내용을 소개합니다.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Spacer()
                }
                
                VStack {
                    Image("Swift")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 390, height: 500, alignment: .leading)
                        .clipped()
                    Text("Swift")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                        .padding(.leading, 10)
                    Text("배우기 쉬운 강력한 프로그래밍 언어인 스위프트를 공부합니다.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Spacer()
                }
                
                VStack {
                    Image("SwiftUI")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 390, height: 500, alignment: .trailing)
                        .clipped()
                    Text("SwiftUI")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                        .padding(.leading, 10)
                    Text("모든 애플 플랫폼에서 UI를 선언하고, 보다 빠르게 아름답고 역동적인 앱을 만들 수 있게 합니다.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Spacer()
                }
                
                VStack {
                    Image("git")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390, height: 500)
                        .clipped()
                    Text("Git")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                        .padding(.leading, 10)
                    Text("프로젝트의 버전 관리와 협업을 좀더 완벽하게 만들어줍니다.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    Spacer()
                }
                
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
