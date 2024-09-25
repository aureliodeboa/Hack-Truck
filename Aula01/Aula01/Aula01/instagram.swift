//
//  instagram.swift
//  Aula01
//
//  Created by Turma01-6 on 18/09/24.
//

import SwiftUI

struct instagram: View {
   
    var body: some View {
        VStack(alignment: .leading){
            //Perfil
            HStack{
                Image("gatin")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(80)
                Spacer()
               
                VStack{
                    HStack{
                        VStack{
                            Text("8").foregroundStyle(.black)
                            Text("Posts")
                                .font(.callout)
                                .foregroundStyle(.black)
                        }
                        VStack{
                            Text("77").foregroundStyle(.black)
                            Text("Seguidores")
                                .font(.callout)
                                .foregroundStyle(.black)
                        }
                        VStack{
                            Text("12").foregroundStyle(.black)
                            Text("Seguindo")
                                .font(.callout)
                                .foregroundStyle(.black)
                        }
                    }
                    Text("Editar Perfil")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .padding(2)
                        .frame(width: 200)
                        .background(Rectangle().foregroundColor(Color(hue: 1.0, saturation: 0.015, brightness: 0.818)).cornerRadius(7))
                }
                
                
            }
            VStack{
                Text("Aurelio Ribeiro")
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                Text("Computer Enginer ").font(.callout)
            }
            

        }
        .frame(width: 350)
        .padding(.horizontal)
        
        
        HStack{
            
            
            Image(systemName: "square.grid.3x3.fill")
            Spacer()
            Image(systemName: "play.square")
            Spacer()
            
            Image(systemName: "person.crop.circle")
        }
        .padding()
        
        VStack{
            Spacer().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            HStack{
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            }
            HStack{
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            }
            HStack{
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Image("gatingrid")
                    .resizable()
                    .frame(width: 110, height: 110 )
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            }
        }
           
                
        
    }
}

#Preview {
    instagram()
}
