//
//  Traditions.swift
//  ChristmasTV
//
//  Created by Angelos Staboulis on 22/12/24.
//

import SwiftUI

struct Traditions: View {
    @StateObject var viewModel = ViewModel()
    @State var index:Int
    var body: some View {
        VStack {
            Image(.papyrus).resizable().overlay {
                Text(viewModel.createTraditions()[index]).frame(width:1200).foregroundStyle(.black)
                ZStack{
                    VStack{
                        Button {
                            if index < viewModel.createTraditions().count-1{
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
    Traditions(index: 0)
}
