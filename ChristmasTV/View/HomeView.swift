//
//  HomeView.swift
//  ChristmasTV
//
//  Created by Angelos Staboulis on 21/12/24.
//

import SwiftUI

struct HomeView: View {
    @State var text: String = ""
    @State var finalText: String = "Merry, Christmas"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var position:Int = 0
    var gradient =  LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .top, endPoint: .bottom)

    var body: some View {
        VStack{
            Image(.main).edgesIgnoringSafeArea(.all).overlay(content: {
                Text(text).font(.largeTitle).frame(width:950,alignment:.leading)
                    .foregroundStyle(gradient)
                    .position(x:1250,y:660)
                    .onReceive(timer) { output in
                        if position < finalText.count {
                            text.append(finalText[position])
                        }
                        position = position + 1
                    }
            })
          
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    HomeView()
}
