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
        VStack(alignment: .center, spacing: 10){
//            Image(systemName: "person")
//                .font(.system(size: 100))
//                .foregroundColor(.black)
//                .shadow(color: .gray, radius: 10, x: 5, y: 10);
            
//            Image(systemName: "cloud.sun.rain")
//                .resizable()
//                .foregroundColor(.black)
//                .background(Color.blue)
//                .frame(width: 200, height: 200)
//                .clipShape(Circle())
//                .padding(.bottom, 20)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .gray, radius: 10, x: 5, y: 5);
            
            Image("heyk")
                .resizable()
                .frame(width:250, height:250, alignment: .center)
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
                .shadow(color: .gray, radius: 10, x: 5, y: 5);
            
            HStack(spacing: 10){
                Text("Kishan")
                    .bold()
                    .font(.title)
                    .padding(.all,10.0)
                    .background(Color.red, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading);
                
                Text("Kumar")
                    .bold()
                    .font(.title)
                    .padding(.all,10.0)
                    .background(Color.red, alignment: .center)
                    .cornerRadius(20)
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center);
                
                Text("Sharma")
                    .bold()
                    .font(.title)
                    .padding(.all,10.0)
                    .background(Color.red, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .multilineTextAlignment(.center);
                
            }.background(Color.black)
            .cornerRadius(20)
            .padding(.all,10)
            .shadow(color: .gray, radius: 10, x: 5, y: 5);
            
            
            
            TextField("Full Name", text: $myNameState)
                .padding(.all,10.0)
                .foregroundColor(.black)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
    
            TextField("Email", text: $myEmailState)
                .padding(.all,10.0)
                .foregroundColor(.black)
                .textContentType(.emailAddress)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            TextField("Password", text: $myPasswordState)
                .padding(.all,10.0)
                .foregroundColor(.black)
                .textContentType(.newPassword)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            Text("Welcome ! \(myNameState)")
                .italic()
                .foregroundColor(.black)
                .padding(.bottom, 10.0)
                .font(.body);
            
            Button(action:{
                print("Email: \(myEmailState)")
                print("Password: \(myPasswordState)")
                self.showingAlert = true
                if(!showingAlert){
                    
                }
            }){
                Text("Click Me")
                    .padding(.all,10.0)
                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                                .shadow(color: .blue, radius: 10.0))
            }
            .alert(isPresented: $showingAlert){
                Alert(title:Text("Important notice \(myNameState)"),message: Text("Are you sure you want to desable this alert?"), primaryButton: .default(Text("Ok")), secondaryButton: .default(Text("Cancle")))
            }
            
            Spacer(minLength: 10.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
