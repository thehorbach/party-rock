//
//  PartyRock.swift
//  party-rock
//
//  Created by Vyacheslav Horbach on 16/09/16.
//  Copyright © 2016 Vjaceslav Horbac. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imgUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageUrl: String {
        return _imgUrl
    }
    
    var videoUrl: String {
        return _videoUrl
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageUrl: String, videoUrl: String, videoTitle: String) {
        self._imgUrl = imageUrl
        self._videoTitle = videoTitle
        self._videoUrl = videoUrl
    }
}
