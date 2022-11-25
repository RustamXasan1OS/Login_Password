//
//  ContentView.swift
//  LoginScreen01
//
//  Created by Rustam Xasan on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    
    //01 User va pass ni elon qildik
    @State var user = ""
    @State var pass = ""
    
    var body: some View {
        
        //02 O'rqa fonga rang berdik.
        ZStack{
           
            LinearGradient(gradient: .init(colors: [Color("1"),Color("2")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            
            // 03 Login va Pasword oynasiga chegara uasimiz
            VStack{
                
                //04 Login oynasini chiqaramiz
                HStack{
                    
                    Image(systemName: "person.fill").resizable().frame(width: 20, height: 20)
                    TextField("Username", text: $user).padding(.leading, 12).font(.system(size: 20))
                }.padding(12)
                    .background(Color("Color"))
                    .cornerRadius(20)
                
                //05 Password oynasini chiqaramiz
                HStack{
                    
                    Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading, 3)
                    
                    SecureField("Password", text: $user).padding(.leading, 12).font(.system(size: 20))
                }.padding(12)
                    .background(Color("Color"))
                    .cornerRadius(20)
                    .offset(y: 15)
                
                //06 Button
                Button(action:{
                }) {
                    Text("Login").foregroundColor(.white).padding()
                    //07 Dumaloq shakilga keltirdik
                        .frame(width: 150)
                            .frame(height: 150)
                   
                }
                //08 Dumaloq shsakliga Rang, Hajm, Tepaga-pastga , chapga-o'ng, Soya
                    .background(LinearGradient(gradient: .init(colors: [Color("1"),Color("2")]), startPoint: .leading, endPoint: .trailing))
                //Hajm
                    .cornerRadius(100)
                //Tepaga-pastga
                    .offset(y: 100)
                //O'nga -chapga
                    //.offset(x: -100)
                //Soya
                    .shadow(radius: 25)
                    
            }
            .padding(.horizontal, 18)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
