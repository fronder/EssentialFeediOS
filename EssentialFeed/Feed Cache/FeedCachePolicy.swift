//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Hasan on 08/06/22.
//

import Foundation

 final class FeedCachePolicy {
    private init() {}
    
    private static let calendar = Calendar.init(identifier: .gregorian)
    
    private static var maxCacheAgeInDays: Int {
        return 7
    }
    
     static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeInDays, to: timestamp) else {
            return false
        }
        return date < maxCacheAge
    }
}
