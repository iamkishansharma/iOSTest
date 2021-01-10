//
//  ContentView.swift
//  iOSTest
//
//  Created by HeyCode Inc. on 11/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("HeyCode Inc.")
            .bold()
            .font(.title)
            .background(Color.blue, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .padding(.all,50.0)
            .multilineTextAlignment(.center);
        
        Text("KISHAN SHARMA")
            .bold()
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.all,20.0)
            .font(.body)
            .background(Color.pink, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/);
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
