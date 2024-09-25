//
//  desafio2.swift
//  Aula01
//
//  Created by Turma01-6 on 18/09/24.
//

import SwiftUI

struct desafio2: View {
    var body: some View {
        HStack {
            HStack{
                Image("truck")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(80)
                    Spacer()
            }
            VStack{
                
                Text("HackaTruk")
                    .font(.callout).foregroundStyle(.red)

                Text("77 Universidades")    .foregroundStyle(.blue)

                    .font(.callout)
                Text("5 Regioes do Brasil")
                    .font(.callout).foregroundStyle(.yellow)

                    
            }
            .padding(10)

        }
        .padding()
        .frame(width: 350, height: 200)
    }
        
}

#Preview {
    desafio2()
}
