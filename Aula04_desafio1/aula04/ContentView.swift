//
//  ContentView.swift
//  aula04
//
//  Created by Turma01-6 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                TabView{
                    Rosa().badge(0)
                        .tabItem {
                            Label(
                                title: { Text("Rosa") },
                                icon: { Image(systemName: "paintbrush.fill") }
                            )
                        }
                    Azul().badge(0)
                        .tabItem {
                            Label(
                                title: { Text("Azul") },
                                icon: { Image(systemName: "paintbrush.pointed.fill") }
                            )
                        }
                    
                    Cinza().badge(0)
                        .tabItem {
                            Label(
                                title: { Text("Cinza") },
                                icon: { Image(systemName: "paintpalette.fill") }
                            )
                        }
                Lista().badge(0)
                        .tabItem {
                            Label(
                                title: { Text("Lista") },
                                icon: { Image(systemName: "list.bullet") }
                            )
                        }
                    
                }
            }
            
        }
    }

    
}

#Preview {
    ContentView()
}





