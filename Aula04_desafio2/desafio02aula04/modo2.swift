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
            VStack{
                Text("Modo 2 ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                Spacer()
                ZStack{
                        
                        Rectangle().fill(.pink).frame(width: 250, height: 150)
                        VStack{
                            Text("Bem vindo, ").font(.title2)
                            TextField("Digite seu nome", text: $name).multilineTextAlignment(.center)
                            ZStack{
                                Rectangle().fill(.blue).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                                NavigationLink(destination: SecondView()) {
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

#Preview {
    modo2()
}



struct SecondView: View {
    var body: some View {
        Text("Second Screen")
            .navigationBarTitle("Second Screen")
    }
}

