//
//  VideoOverlay.swift
//  VideoPlayerDemo
//
//  Created by Kanishka on 12/07/22.
//

import SwiftUI
import AVKit


struct VideoOverlay: View {
    @State var player = AVPlayer(url: URL(string: "https://swiftanytime-content.s3.ap-south-1.amazonaws.com/SwiftUI-Beginner/Video-Player/iMacAdvertisement.mp4")!) // 1

    var body: some View {
        VideoPlayer(player: player, videoOverlay: { // 1
            VStack(alignment: .leading) { // 2
                Text("iMac 2021 Advertisement")
                    .foregroundColor(Color.gray)
                    .bold()
                    .font(Font.title2)
                    .padding(.all, 10)
                Spacer()
            }
        })
            .frame(width: 400, height: 300, alignment: .center)
    }
}

struct VideoOverlay_Previews: PreviewProvider {
    static var previews: some View {
        VideoOverlay()
    }
}
