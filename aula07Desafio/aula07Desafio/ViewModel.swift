import Foundation
import Combine

class AgentsViewModel: ObservableObject {
    @Published var agents: [Agent] = []
    
    func fetch() {
        let url = URL(string: "https://valorant-api.com/v1/agents")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Verifica se houve erro na requisição
            if let error = error {
                print("Erro na requisição: \(error)")
                return
            }
            // Verifica se há dados
            guard let data = data else {
                print("Dados não disponíveis")
                return
            }

            // Decodifica os dados
            do {
                let response = try JSONDecoder().decode(Response.self, from: data)
                DispatchQueue.main.async {
                    self.agents = response.data // Armazena apenas os agentes
                }
                print("Agentes: \(self.agents)") // Exibe os agentes, se necessário
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }
        task.resume()
    }
}
