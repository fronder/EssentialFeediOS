//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by Hasan on 04/06/23.
//

import XCTest

class FeedImagePresenter {
    init(view: Any) {
        
    }
}

class FeedImagePresenterTests: XCTestCase {
    
    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        let _ = FeedImagePresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // MARK: - Helper
    
    private class ViewSpy {
        var messages = [Any]()
    }
}
