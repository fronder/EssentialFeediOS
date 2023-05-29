//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Hasan on 29/05/23.
//

import XCTest

final class FeedPresenter {
    init(_ view: Any) {}
}

class FeedPresenterTests: XCTestCase {
    
    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        let _ = FeedPresenter(view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: - Helpers
    
    private class ViewSpy {
        let messages = [Any]()
    }
}
