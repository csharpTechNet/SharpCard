//
//  ContentView.swift
//  SharpCard
//
//  Created by Clifford Sharp on 2/20/20.
//  Copyright © 2020 Custom Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.09, green:0.63, blue:0.52, opacity:1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("MySelf")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                )
                Text("Clifford Sharp")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Sr iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 408.201.2251", imageName: "phone.fill")
                InfoView(text: "cliff@csharpTech.net", imageName: "phone.fill")
             }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

