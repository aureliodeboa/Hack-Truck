//
//  Lista.swift
//  aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI


struct Lista: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("List").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().padding(.horizontal)
            List{
                HStack{
                    Text("Item ")
                    Spacer()
                    Image(systemName: "paintbrush")
                
                }
                HStack{
                    Text("Item ")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                
                }
                HStack{
                    Text("Item ")
                    Spacer()
                    Image(systemName: "paintpalette")
                
                }
                
            }.ignoresSafeArea()
            
        }
        .background(Color(red: 0.949, green: 0.949, blue: 0.971))
    }
}
#Preview {
    Lista()
}
