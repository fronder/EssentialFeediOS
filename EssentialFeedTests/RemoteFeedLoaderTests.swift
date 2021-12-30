//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Hasan on 30/12/21.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class LoadFeedLoaderTests: XCTestCase {
 
    func test_initDoesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
         
        XCTAssertNil(client.requestedURL)
    }
    
    
}
