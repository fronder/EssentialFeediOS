//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Hasan on 28/12/21.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
} 
