//
//  LoopingVideos.swift
//  VideoPlayerDemo
//
//  Created by Kanishka on 12/07/22.
//

import SwiftUI
import AVKit 

struct LoopingVideos: View {
    var player = AVPlayer(url: URL(string: "https://swiftanytime-content.s3.ap-south-1.amazonaws.com/SwiftUI-Beginner/Video-Player/iMacAdvertisement.mp4")!)
        
        var body: some View {
            VideoPlayer(player: player)
                .frame(width: 400, height: 300, alignment: .center)
                .onAppear {
                    addObserver() // 1
                }
        }
        
        func addObserver() {
            
            NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime,
                                                   object: player.currentItem,
                                                   queue: nil) { notif in // 2
                player.seek(to: .zero) // 3
                player.play() // 4
            }
        }

}

struct LoopingVideos_Previews: PreviewProvider {
    static var previews: some View {
        LoopingVideos()
    }
}
