//
//  modo1.swift
//  desafio02aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI



import SwiftUI

struct modo1: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Modo 1").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                Spacer()
                ZStack{
                        
                        Rectangle().fill(.pink).frame(width: 250, height: 100)
                        VStack{
                            Text("Nome: Aurelio ").font(.title2)
                            Text("Sobrenome: Ribeiro ").font(.title2)
                        }
                }.padding(-10.0)
                Spacer()
            }
            
        }
    }
}


#Preview {
    modo1()
}
