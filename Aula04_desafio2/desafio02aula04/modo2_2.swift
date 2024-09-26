//
//  modo2_2.swift
//  desafio02aula04
//
//  Created by Turma01-6 on 26/09/24.
//

import SwiftUI

struct modo2_2: View {
    var name2 : String = ""
    var body: some View {
        NavigationView {
            ZStack{
                Color(hue:0.663, saturation: 0.513,brightness: 0.267).ignoresSafeArea()
                
                VStack{
                    Text("Modo 2 ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.white).padding()
                    Spacer()
                    ZStack{
                        
                        Rectangle().fill(.pink).frame(width: 350, height: 250).cornerRadius(20)
                        VStack{
                            
                            Text(name2).foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                        }
                    }.padding(-10.0)
                    Spacer()
                }
            }
        }
    }
}
#Preview {
    modo2_2()
}
