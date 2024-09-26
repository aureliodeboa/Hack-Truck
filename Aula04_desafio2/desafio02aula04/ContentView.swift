import SwiftUI

struct ContentView: View {
    @State var sheete : Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
             
                Color(hue:0.663, saturation: 0.513,brightness: 0.267)
                    .ignoresSafeArea()

                VStack {
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        

                    Spacer()

                    
                    NavigationLink(destination: modo1()) {
                        ZStack {
                            Rectangle()
                                .fill(Color.pink)
                                .frame(width: 250, height: 100)
                                .cornerRadius(10)
                            Text("Módulo 1")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    }

                   
                    NavigationLink(destination: modo2()) {
                        ZStack {
                            Rectangle()
                                .fill(Color.pink)
                                .frame(width: 250, height: 100)
                                .cornerRadius(10)
                            Text("Módulo 2")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    }

                   
                    
                    Button(action: {
                        sheete.toggle()
                    }, label: {
                        ZStack {
                            Rectangle()
                                .fill(Color.pink)
                                .frame(width: 250, height: 100)
                                .cornerRadius(10)
                            Text("Módulo 3")
                                .font(.title2)
                                .foregroundColor(.black)
                        }

                    })


                    Spacer()
                }
                .sheet(isPresented: $sheete, content: {
                    modo3()
                })
            }
        }
    }
}



#Preview {
    ContentView()
}
