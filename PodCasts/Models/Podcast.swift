//
//  Podcast.swift
//  PodCasts
//
//  Created by Anna Guo on 4/29/19.
//  Copyright © 2019 Anna Guo. All rights reserved.
//

import Foundation

struct Podcast: Decodable {
    var trackName: String?
    var artistName: String?
    var artworkUrl600: String?
    var feedUrl: String?
    var trackCount: Int?
}

