//
//  Chirstmas.swift
//  ChristmasTV
//
//  Created by Angelos Staboulis on 21/12/24.
//

import SwiftUI
struct Chirstmas: View {
    @StateObject var viewModel = ViewModel()
    @State var index:Int
    var body: some View {
        VStack {
            Image(.papyrus).resizable().overlay {
                Text(viewModel.createHistory()[index]).frame(width:1200).foregroundStyle(.black)
                ZStack{
                    VStack{
                        Button {
                            if index < viewModel.createHistory().count-1{
                                index = index + 1
                            }else{
                                index = 0
                            }
                        } label: {
                            Text("Επόμενη Σελίδα")
                        }
                    }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                }

                
            }.frame(width:UIScreen.main.bounds.width)
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Chirstmas(index: 0)
}
