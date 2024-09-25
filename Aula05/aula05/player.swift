//
//  player.swift
//  aula05
//
//  Created by Turma01-6 on 24/09/24.
//

import SwiftUI



struct player: View {
    @State var musica = Song(id: 1, name: "Blinding Lights", artist: "The Weeknd", capa: "https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452")
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center))
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                AsyncImage(url: URL(string: musica.capa)) { result in
                    result.image?
                        .resizable()
                        .scaledToFill()
                        .padding()
                }
                .padding()
                .frame(width: 200, height: 250)
                
                
                VStack{
                    Text(musica.name)
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text(musica.artist)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                    HStack{
                        Image(systemName: "shuffle").foregroundColor(.white).font(.system(size: 36))
                        Spacer()
                        Image(systemName: "backward.end.fill").foregroundColor(.white).font(.system(size: 36))
                        Spacer()
                        Image(systemName: "play.fill").foregroundColor(.white).font(.system(size: 36))
                        Spacer()
                        Image(systemName: "forward.end.fill").foregroundColor(.white).font(.system(size: 36))
                        Spacer()
                        Image(systemName: "repeat").foregroundColor(.white).font(.system(size: 36))
                    }
                    .padding()
                }
            }
            
        }
        
    }
}

#Preview {
    player()
}
