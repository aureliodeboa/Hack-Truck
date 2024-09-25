//
//  ContentView.swift
//  Aula01
//
//  Created by Turma01-6 on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
             Rectangle().fill(.red
             ).frame(width: 100, height: 100)
                Spacer()
            Rectangle().fill(.blue
                ).frame(width: 100, height: 100)
            }
            Spacer()
            HStack{
                Rectangle().fill(.green
                ).frame(width: 100, height: 100)
                   Spacer()
               Rectangle().fill(.yellow
                   ).frame(width: 100, height: 100)

            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
