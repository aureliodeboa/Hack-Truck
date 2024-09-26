//
//  modo2.swift
//  desafio02aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI

struct modo2: View {
    @State private var name : String = ""
    var body: some View {
        NavigationView {
            ZStack{
                Color(hue:0.663, saturation: 0.513,brightness: 0.267).ignoresSafeArea()
                VStack{
                    Text("Modo 2 ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundStyle(.white).padding()
                    Spacer()
                    ZStack{
                        
                        Rectangle().fill(.pink).frame(width: 350, height: 250).cornerRadius(20)
                        VStack{
                            
                            ZStack(alignment: .center) {
                                if name.isEmpty {
                                    Text("Digite seu nome...")
                                        .foregroundColor(.white)
                                        .padding(.leading, 5)
                                }
                                TextField("", text: $name)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .cornerRadius(5)
                            }
                            Text("Bem vindo, \(name) ").font(.title2).foregroundColor(.white).padding()
                            
                            ZStack{
                                Rectangle()
                                    .fill(.blue)
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                                    .cornerRadius(5)
                                
                                NavigationLink(destination: modo2_2(name2: name)) {
                                    Text("Acessar tela").foregroundStyle(.white)
                                }
                                
                            }
                        }
                    }.padding(-10.0)
                    Spacer()
                }
            }
            
        }
    }
}

#Preview {
    modo2()
}



struct SecondView: View {
    var body: some View {
        Text("Second Screen")
            .navigationBarTitle("Second Screen")
    }
}

