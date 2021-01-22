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
            
            Text("HeyCode Inc.")
                .bold()
                .font(.title)
                .background(Color.blue, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.all,100.0)
                .multilineTextAlignment(.center);
            
            TextField("Full Name", text: $myNameState)
                .padding(.all,10.0)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            TextField("Email", text: $myEmailState)
                .padding(.all,10.0)
                .textContentType(.emailAddress)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            TextField("Password", text: $myPasswordState)
                .padding(.all,10.0)
                .textContentType(.password)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            Text("Welcome ! \(myNameState)")
                .italic()
                .font(.body);
            
            Button(action:{
                print("Email: \(myEmailState)")
                print("Password: \(myPasswordState)")
                self.showingAlert = true
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
