

import SwiftUI

struct Azul : View {
    var body: some View {
        ZStack{
            Rectangle().fill(.blue).edgesIgnoringSafeArea(.top)
            Circle().frame(width: 350)
            Image(systemName: "paintbrush.pointed").foregroundColor(.blue).frame(width: 400, height: 400).font(.system(size: 200))
            

        }
    }
}

#Preview {
    Azul()
}
