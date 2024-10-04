import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.recipe) { receita in
                NavigationLink(destination: ReceitaDetailView(receita: receita)) {
                    HStack {
                        AsyncImage(url: URL(string: receita.imagem)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(8)
                        } placeholder: {
                            ProgressView()
                        }
                        
                        VStack(alignment: .leading) {
                            Text(receita.nome)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Text(receita.descricao)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.white]), startPoint: .top, endPoint: .bottom))
                    )
                }
            }
            .navigationTitle("Receitas")
            .onAppear {
                viewModel.fetch()
            }
            .listStyle(PlainListStyle())
        }
        .accentColor(.blue) // Cor de destaque para a navegação
    }
}

struct ReceitaDetailView: View {
    let receita: Receita
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: receita.imagem)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                } placeholder: {
                    ProgressView()
                }
                
                Text(receita.nome)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                    .foregroundColor(.primary)

                Text(receita.descricao)
                    .font(.body)
                    .padding(.vertical)
                    .foregroundColor(.secondary)

                Text("Modo de Preparo")
                    .font(.headline)
                    .padding(.top)
                    .foregroundColor(.blue)

                ForEach(receita.modoDePreparo, id: \.self) { passo in
                    Text("• \(passo)")
                        .padding(.vertical, 2)
                }

                Spacer()
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
            )
        }
        .navigationTitle(receita.nome)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}
