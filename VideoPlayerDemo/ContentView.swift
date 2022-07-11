//
//  ContentView.swift
//  VideoPlayerDemo
//
//  Created by Kanishka on 23/05/22.
//


import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "iMac2021Ad", withExtension: "mp4")!) // 2
   var body: some View {
           VideoPlayer(player: player) // 3
               .frame(width: 400, height: 300, alignment: .center) //4
     
   }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
