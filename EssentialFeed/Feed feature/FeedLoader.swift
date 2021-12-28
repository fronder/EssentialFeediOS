//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Hasan on 28/12/21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
} 
