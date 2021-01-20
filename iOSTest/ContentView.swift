//
//  ContentView.swift
//  iOSTest
//
//  Created by HeyCode Inc. on 11/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var myStateVariable:String = ""
    
    var body: some View {
        VStack{
            
            Text("HeyCode Inc.")
                .bold()
                .font(.title)
                .background(Color.blue, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding(.all,100.0)
                .multilineTextAlignment(.center);
            
            TextField("Your Name", text: $myStateVariable)
                .padding(.all,10.0)
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                            .shadow(color: .black, radius: 10.0));
            
            Text("Welcome ! \(myStateVariable)")
                .italic()
                .font(.body);
            
            Button(action:{
                print("Button clicked \(myStateVariable)")
            }){
                Text("Click Me")
                    .padding(10.0)
                    .overlay(RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                                .shadow(color: .blue, radius: 10.0))
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
