//
//  WFBCSermonPlayerItem.swift
//  Waldport FBC Sermons
//
//  Created by Casey Chesshir on 5/14/17.
//  Copyright © 2017 Waldport FBC. All rights reserved.
//

import UIKit
import AVFoundation

class WFBCSermonPlayerItem: AVPlayerItem {
    //let url = <#http://www.fbcwaldport.org/wp-content/uploads/sermons/2017/May%207%202017%20.mp3#>
    //var asset = AVAsset(url)
    
    func prepareToPlay() {
        let url = NSURL(string: "http://www.fbcwaldport.org/wp-content/uploads/sermons/2017/May%207%202017%20.mp3")
        // Create asset to be played
        var asset = AVAsset(url: url! as URL)
        
        let assetKeys = [
            "playable",
            "hasProtectedContent"
        ]
        // Create a new AVPlayerItem with the asset and an
        // array of asset keys to be automatically loaded
        var playerItem = AVPlayerItem(asset: asset,
                                  automaticallyLoadedAssetKeys: assetKeys)
        /*
        // Register as an observer of the player item's status property
        playerItem.addObserver(self,
                               forKeyPath: #keyPath(AVPlayerItem.status),
                               options: [.old, .new],
                               context: &playerItemContext)
        */
        
        // Associate the player item with the player
        var player = AVPlayer(playerItem: playerItem)
    }
    
}
