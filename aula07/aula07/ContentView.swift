import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var selectedCharacter: HaPo?
    @State private var isSheetPresented = false

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    AsyncImage(url: URL(string: "https://theurbanchronicleblog.wordpress.com/wp-content/uploads/2017/08/wizarding-world-of-harry-potter-logo.jpg")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                            .ignoresSafeArea(edges: .top)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    ForEach(viewModel.chars) { character in
                        HStack(alignment: .center) {
                            AsyncImage(url: URL(string: character.image ?? "")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                            } placeholder: {
                                ProgressView()
                            }
                            
                            Text(character.name ?? "Unknown")
                                .font(.headline)
                                .fontWeight(.bold)
                                .padding(.leading, 10)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 40)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(width: 400, height: 100)
                        .background(Color.black)
                        .cornerRadius(10)
                        .onTapGesture {
                            selectedCharacter = character
                            isSheetPresented = true
                        }
                    }
                }
            }
            .background(Color.black)
            .sheet(isPresented: $isSheetPresented) {
                if let character = selectedCharacter {
                    CharacterDetailView(character: character)
                }
            }
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct CharacterDetailView: View {
    var character: HaPo
    
    var body: some View {
        VStack {
            Text(character.name ?? "Unknown")
                .font(.largeTitle)
                .padding()
            
            AsyncImage(url: URL(string: character.image ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            } placeholder: {
                ProgressView()
            }
            
            Text("Species: \(character.species ?? "Unknown")").font(.headline)
                .fontWeight(.bold)
                .padding(.leading, 10)
                .foregroundColor(.white)
            Text("Gender: \(character.gender ?? "Unknown")").font(.headline)
                .fontWeight(.bold)
                .padding(.leading, 10)
                .foregroundColor(.white)
            Text("House: \(character.house ?? "Unknown")").font(.headline)
                .fontWeight(.bold)
                .padding(.leading, 10)
                .foregroundColor(.white)
            Text("Date of Birth: \(character.dateOfBirth ?? "Unknown")").font(.headline)
                .fontWeight(.bold)
                .padding(.leading, 10)
                .foregroundColor(.white)
            
            Spacer()
        }
        .frame(width: 900)
        .background(Color.black)
        
    }
}

#Preview {
    ContentView()
}
