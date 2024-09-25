//
//  Rosa.swift
//  aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.pink).edgesIgnoringSafeArea(.top)
            Circle().frame(width: 350)
            Image(systemName: "paintbrush").foregroundColor(.pink).frame(width: 400, height: 400).font(.system(size: 200))
            

        }
        
    }
}

#Preview {
    Rosa()
}
