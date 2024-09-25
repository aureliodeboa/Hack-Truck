import SwiftUI

struct ContentView: View {
    @State private var name: String = "Aurelio"
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("Fundo")
                .resizable()
                .scaledToFill()
                .frame(width: 500, height: 900)
                .offset(x: 100)
            
            Rectangle()
                .foregroundColor(.white)
                .opacity(0.65)
            
            VStack {
                Text("BEM VINDO, \(name)!") // Título
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.vertical, 70.0)
                
                TextField("Digite seu nome", text: $name)
                    .padding()
                        .background(Color.clear) // Fundo transparente
                        .foregroundColor(.black) // Cor o texto
                        .font(.system(size: 20)) // Aumentando a fonte
                        .multilineTextAlignment(.center) // Centralizando o texto
                        .textFieldStyle(PlainTextFieldStyle()) // Estilo sem bordas
                        .frame(maxWidth: 300) // Definindo a largura máxima
                
                Spacer()
                
                Image("name")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .shadow(radius: 20)
            
                
                Image("truck")
                    .resizable()
                    .frame(width: 250, height: 150)
                    .shadow(radius: 30)
                    .shadow(radius: 20)
                
                Spacer()
                
                Button("Entrar") {
                    showingAlert = true // Altera o estado para mostrar o alerta
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("ALETA!!"),
                          message: Text("Voce irá iniciar o desfio da aula agora"),
                          dismissButton: .default(Text("VAMOS LA!!")))
                }
                
                Spacer()
            }
            .padding() // Adiciona padding ao VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // Centraliza o VStack
        }
    }
}

#Preview {
    ContentView()
}

