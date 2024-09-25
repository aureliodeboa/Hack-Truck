import SwiftUI

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var arrayMusicas = [
    Song(id: 1, name: "Blinding Lights", artist: "The Weeknd", capa: "https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452"),
    Song(id: 2, name: "Shape of You", artist: "Ed Sheeran", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOqTSnfvjmCoSblQL6Dtr-yTdgqNSCa3I5vQ&s"),
    Song(id: 3, name: "Watermelon Sugar", artist: "Harry Styles", capa: "https://down-br.img.susercontent.com/file/052fdde95e5efe38a5ff28c76c9160a3"),
    Song(id: 4, name: "Levitating", artist: "Dua Lip", capa: "https://i.scdn.co/image/ab67616d0000b273a22a7b828934f83ed9901354"),
    Song(id: 5, name: "Bad Guy", artist: "Billie Eilish", capa: "https://upload.wikimedia.org/wikipedia/pt/e/e8/Happier_Than_Ever_%28%C3%A1lbum%29_-_Billie_Eilish.png"),
    Song(id: 6, name: "Peaches", artist: "Justin Bieber", capa: "https://i.scdn.co/image/ab67616d0000b273f46b9d202509a8f7384b90de"),
    Song(id: 7, name: "drivers license", artist: "Olivia Rodrigo", capa: "https://i.scdn.co/image/ab67616d0000b273e85259a1cae29a8d91f2093d"),
    Song(id: 8, name: "Good 4 U", artist: "Olivia Rodrigo", capa: "https://portalpopline.com.br/wp-content/uploads/2023/06/sour-album-olivia-rodrigo-faz-historia-nos-eua.jpg"),
    Song(id: 9, name: "Montero (Call Me By Your Name)", artist: "Lil Nas X", capa: "https://i.scdn.co/image/ab67616d0000b273be82673b5f79d9658ec0a9fd"),
    Song(id: 10, name: "Don't Start Now", artist: "Dua Lipa", capa: "https://busterz.com.br/wp-content/uploads/2020/08/Dont-Start-Now.jpg")
]

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center))
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: "https://www.ufca.edu.br/portal/wp-content/uploads/2024/05/IBM.png")) { result in
                        result.image?
                            .resizable()
                            .scaledToFill()
                            .padding()
                    }
                    .padding(.leading, 170.0)
                    .frame(width: 200, height: 250)
                    
                    Text("HackaFM")
                        .font(.title)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    HStack{
                        Image("truck").resizable().scaledToFit().frame(width: 40,height: 40)
                        Text("HackaSong")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding(.horizontal)
                    
                    ScrollView {
                        ForEach(arrayMusicas) { musica in
                            NavigationLink(destination: player(musica: musica)) {
                                HStack {
                                    AsyncImage(url: URL(string: musica.capa)) { result in
                                        result.image?
                                            .resizable()
                                            .scaledToFill()
                                    }
                                    .frame(width: 60, height: 60)
                                    .clipped()
                                    
                                    VStack(alignment: .leading) {
                                        Text(musica.name)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        Text(musica.artist)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(Color.clear)
                                }
                            
                            
                        }
                        Text("Sugeridos")
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .lineLimit(nil) // Use nil para permitir quantas linhas forem necessárias
                                .foregroundStyle(Color(.white))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(arrayMusicas) { musica in
                                    NavigationLink(destination: player(musica: musica)) {
                                        VStack {
                                            AsyncImage(url: URL(string: musica.capa)) { result in
                                                result.image?
                                                    .resizable()
                                                    .scaledToFill()
                                            }
                                            .frame(width: 200, height: 200)
                                            .clipped()
                                            
                                            VStack(alignment: .leading) {
                                                Text(musica.name)
                                                    .font(.headline)
                                                    .foregroundColor(.white)
                                                Text(musica.artist)
                                                    .font(.subheadline)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                        }
                                        .padding()
                                        .background(Color.clear)
                                        }
                                    
                                    
                                }
                            }
                            
                            
                        }

                    }
                    .scrollContentBackground(.hidden)
                    
                }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
