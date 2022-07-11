//
//  PlayingViewRemotely.swift
//  VideoPlayerDemo
//
//  Created by Kanishka on 12/07/22.
//

import SwiftUI
import AVKit

struct PlayingViewRemotely: View {
    @State var player = AVPlayer(url: URL(string: "https://swiftanytime-content.s3.ap-south-1.amazonaws.com/SwiftUI-Beginner/Video-Player/iMacAdvertisement.mp4")!) 
     var body: some View {
             VideoPlayer(player: player)
                 .frame(width: 400,
                        height: 300,
                        alignment: .center)
       
     }

}

struct PlayingViewRemotely_Previews: PreviewProvider {
    static var previews: some View {
        PlayingViewRemotely()
    }
}
