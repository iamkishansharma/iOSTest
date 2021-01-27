//
//  ContentView.swift
//  iOSTest
//
//  Created by HeyCode Inc. on 11/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var myEmailState:String = ""
    @State var myPasswordState:String = ""
    @State var myNameState:String = ""
    
    @State private var showingAlert = false
    var body: some View {
        VStack{
            Image(systemName: "person")
                .font(.system(size: 100))
                .foregroundColor(.black)
                .shadow(color: .gray, radius: 10, x: 5, y: 10);
            
            Image(systemName: "cloud.sun.rain")
                .resizable()
                .foregroundColor(.black)
                .background(Color.blue)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .padding(.all, 20)
                .aspectRatio(contentMode: .fill)
                .shadow(color: .gray, radius: 10, x: 5, y: 5);
            
            
            Text("HeyCode Inc.")
                .bold()
                .font(.title)
                .background(Color.red, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Capsule())
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .foregroundColor(.white)
                .multilineTextAlignment(.center);
            
            Spacer(minLength: 10.0)
            
            TextField("Full Name", text: $myNameState)
                .padding(.all,10.0)
                .foregroundColor(.white)
                .accentColor(.white)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            TextField("Email", text: $myEmailState)
                .padding(.all,10.0)
                .foregroundColor(.white)
                .textContentType(.emailAddress)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            TextField("Password", text: $myPasswordState)
                .padding(.all,10.0)
                .foregroundColor(.white)
                .textContentType(.newPassword)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            Text("Welcome ! \(myNameState)")
                .italic()
                .foregroundColor(.white)
                .font(.body);
            
            Button(action:{
                print("Email: \(myEmailState)")
                print("Password: \(myPasswordState)")
                self.showingAlert = true
                if(!showingAlert){
                    
                }
            }){
                Text("Click Me")
                    .padding(10.0)
                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                                .shadow(color: .blue, radius: 10.0))
            }
            .alert(isPresented: $showingAlert){
                Alert(title:Text("Important notice \(myNameState)"),message: Text("Are you sure you want to desable this alert?"),dismissButton: .default(Text("Alright Cool!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
