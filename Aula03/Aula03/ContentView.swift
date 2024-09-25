import SwiftUI

struct ContentView: View {
    let normal = Color("Normal")
    let sobrepeso = Color("Sobrepeso")
    let obesidade = Color("Obesidade")
    @State private var pesoString: String = ""
    @State private var alturaString: String = ""
    @State var currentColor = Color("Normal")
    @State var currentPeso: String = "Normal"
    @State var IMC: Float = 0

    var body: some View {
        VStack {
            Text("Calculadora de IMC").font(.title)
            Divider()

            TextField("Peso (kg)", text: $pesoString)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("Altura (m)", text: $alturaString)
                .keyboardType(.decimalPad)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button(action: {
                if let peso = Float(pesoString), let altura = Float(alturaString), altura > 0 {
                    IMC = peso / (altura * altura)
                    switch IMC {
                    case ...18.5:
                        currentPeso = "Baixo peso"
                        currentColor = Color("BaixoPeso")
                    case 18.5..<25:
                        currentPeso = "Normal"
                        currentColor = Color("Normal")
                    case 25..<30:
                        currentPeso = "Sobrepeso"
                        currentColor = Color("Sobrepeso")
                    case 30...:
                        currentPeso = "Obesidade"
                        currentColor = Color("Obesidade")
                    default:
                        currentPeso = "Indefinido"
                        currentColor = Color("Normal")
                    }
                } else {
                    currentPeso = "Entrada inválida"
                    currentColor = Color("Normal")
                }
            }) {
                Text("Calcular")
                    .font(.title)
            }
            Spacer()
            Text(currentPeso).font(.title).foregroundColor(.white)
            Spacer()
            Image("table").resizable().scaledToFit()
        }
        .background(LinearGradient(gradient: Gradient(colors: [currentColor]), startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
