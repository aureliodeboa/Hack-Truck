//
//  modo3.swift
//  desafio02aula04
//
//  Created by Turma01-6 on 26/09/24.
//

import SwiftUI

struct modo3: View {
    var body: some View {
        ZStack{
            Color(hue:0.663, saturation: 0.513,brightness: 0.267).ignoresSafeArea()
      
        VStack{
            Text("Sheet View").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).bold().padding()
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
    modo3()
}
