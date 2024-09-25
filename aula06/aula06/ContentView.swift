import SwiftUI
import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var arrayLocations = [
    Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -15.7801, longitude: -47.9292), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/550px-Flag_of_Brazil.svg.png", description: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
    Location(name: "Estados Unidos", coordinate: CLLocationCoordinate2D(latitude: 38.8977, longitude: -77.0365), flag: "https://static.mundoeducacao.uol.com.br/mundoeducacao/2022/05/bandeira-estados-unidos.jpg", description: "Os EUA são um país com 50 estados que cobrem uma vasta faixa da América do Norte, com o Alasca ao noroeste e o Havaí no Oceano Pacífico, estendendo a presença do país. As principais cidades da costa atlântica são Nova York, um centro financeiro e cultural global, e a capital, Washington, DC. Chicago, uma metrópole do centro-oeste, é conhecida por sua importante arquitetura, enquanto Los Angeles, na costa oeste, é famosa pelas produções cinematográficas de Hollywood"),
    Location(name: "Inglaterra", coordinate: CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278), flag: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiPaQuGw35H0B42-EWFgAq1Yiz_OJH9ZUzVQ&s", description: "A Inglaterra, local de nascimento de Shakespeare e dos Beatles, é um país nas ilhas britânicas que faz fronteira com a Escócia e o País de Gales. A capital, Londres, situada às margens do rio Tâmisa, abriga o Parlamento, o Big Ben e a Torre de Londres, do século XI. A cidade é também um moderno centro multicultural de artes e negócios. Outras grandes cidades são Manchester, Birmingham, Liverpool, Bristol e os centros universitários de Oxford e Cambridge.")
]

struct ContentView: View {
    @State private var currentPais: String = "Brazil"
    @State private var showSheet = false
    @State private var selectedLocation: Location?
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -15.7801, longitude: -47.9292),
        span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20)
    )
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: arrayLocations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(.red)
                        Text(location.name)
                            .font(.caption)
                            .fixedSize()
                            .padding(5)
                            .background(Color.white)
                            .cornerRadius(5)
                            .shadow(radius: 1)
                            .onTapGesture {
                                selectedLocation = location
                                currentPais = location.name
                                showSheet = true
                            }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)

            VStack {
                ZStack {
                    VStack {
                        
                        Text("World Map")
                            .foregroundColor(.black)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        Text(currentPais)
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        
                    }.frame(width: 900, height: 100)
                        .background()
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                Spacer()
                HStack {
                    ForEach(arrayLocations) { location in
                        AsyncImage(url: URL(string: location.flag)) { image in
                            Button(action: {
                                withAnimation {
                                    region.center = location.coordinate
                                    region.span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                                    currentPais = location.name
                                }
                            }) {
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 30)
                                    .cornerRadius(5)
                                    .padding(4)
                            }
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(10)
                .shadow(radius: 5)
            }
        }
        .sheet(isPresented: $showSheet) {
            if let location = selectedLocation {
                LocationDetailView(location: location)
            }
        }
    }
}

struct LocationDetailView: View {
    let location: Location
    
    var body: some View {
        VStack {
            Text(location.name)
                .font(.largeTitle)
                .padding()
            AsyncImage(url: URL(string: location.flag)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding()
            } placeholder: {
                ProgressView()
            }
            Text(location.description)
                .padding()
            Spacer()
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
