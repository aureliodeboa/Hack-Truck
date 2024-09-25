//
//  ContentView.swift
//  desafio02aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image("logo").resizable().scaledToFit()
                Spacer()
                NavigationLink(destination: modo1()){
                    ZStack{
                        
                        Rectangle().fill(.pink).frame(width: 250, height: 100)
                        Text("Modulo 1").font(.title2)
                    }
                }
            
                
                ZStack{
                   
                    Rectangle().fill(.pink).frame(width: 250, height: 100)
                    Text("Modulo 1").font(.title2)
                }
                ZStack{
                   
                    Rectangle().fill(.pink).frame(width: 250, height: 100)
                    Text("Modulo 1").font(.title2)
                }
                Spacer()
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
