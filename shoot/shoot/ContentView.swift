//
//  ContentView.swift
//  shoot
//
//  Created by Sumaya Buzlouf on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var base = ["rock","rock"]
    @State var pose = ["rock", "paper", "scissors"]
    @State var points = 0
    @State var point = 0
    
    var body: some View {
        VStack {
            Text("Points: \(point)")
                .padding()
            
            Text("Player 1")
                .padding()
            
            Image(base[0])
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            Image(base[1])
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
                .onTapGesture {
                    base[1] = pose.randomElement() ?? pose[0]
                    base[0] = pose.randomElement() ?? pose[0]
                    
                    if base[0] == pose[0] && base[1] == pose[1]{
                        points = points + 1
                    }
                    else if base[0] == pose[0] && base[1] == pose[2]{
                        point = point + 1
                    }
                    else if base[0] == pose[1] && base[1] == pose[0]{
                        point = point + 1
                    }
                    else if base[0] == pose[2] && base[1] == pose[0]{
                        points = points + 1
                    }
                    else if base[0] == pose[1] && base[1] == pose[2]{
                        points = points + 1
                    }
                    else {
                        point = point
                        points = points
                    }
                }
            
            Text("Player 2")
                .padding()
            
            Text("Points: \(points)")
                .padding()
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
