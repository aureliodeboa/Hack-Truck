import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AgentsViewModel()

    var body: some View {
        NavigationView {
                List {
                    
                    ForEach(viewModel.agents, id: \.uuid) { agent in
                        NavigationLink(destination: AgentDetailView(agent: agent)) {
                            AgentRow(agent: agent)
                        }
                    }
                }
                .navigationTitle("Agents")
                .overlay {
                    if viewModel.agents.isEmpty {
                        ProgressView()
                    }
                }
            
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct AgentRow: View {
    let agent: Agent

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: agent.displayIcon ??  "")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(agent.displayName ?? "")
                    .font(.headline)
                Text(agent.role?.displayName ?? "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct AgentDetailView: View {
    let agent: Agent

    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: agent.fullPortrait ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(12)
                } placeholder: {
                    ProgressView()
                }
                
                Text(agent.displayName ?? "")
                    .font(.largeTitle)
                    .padding()

                Text(agent.description ?? "")
                    .padding()

                Text("Habilidades")
                    .font(.title2)
                    .padding(.top)

                ForEach(agent.abilities ?? [], id: \.slot) { ability in
                    AbilityView(ability: ability)
                }
            }
            .padding()
        }
        .navigationTitle(agent.displayName ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AbilityView: View {
    let ability: Ability

    var body: some View {
        VStack(alignment: .leading) {
            Text(ability.displayName ?? "")
                .font(.headline)
            Text(ability.description ?? "")
                .font(.subheadline)
                .padding(.bottom)

            AsyncImage(url: URL(string: ability.displayIcon ?? "")) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            } placeholder: {
                ProgressView()
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

// Preview
#Preview {
    ContentView()
}
