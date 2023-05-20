//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Hasan on 20/05/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
