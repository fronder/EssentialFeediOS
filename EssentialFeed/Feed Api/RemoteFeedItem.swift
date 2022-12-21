//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Hasan on 07/05/22.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
