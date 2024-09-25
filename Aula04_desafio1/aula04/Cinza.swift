//
//  Cinza.swift
//  aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.green).edgesIgnoringSafeArea(.top)
            Circle().frame(width: 350)
            Image(systemName: "paintpalette").foregroundColor(.green).frame(width: 400, height: 400).font(.system(size: 200))
            

        }
    }
};


#Preview {
    Cinza()
}
