//
//  MockNewsSearchManager.swift
//  KeywordNewsTests
//
//  Created by JeongminKim on 2022/03/18.
//

import Foundation

@testable import KeywordNews

final class MockNewsSearchManager: NewsSearchManagerProtocol {
    var error: Error?
    var isCalledRequest = false
    func request(
        from keyword: String,
        start: Int,
        display: Int,
        completionHandler: @escaping ([News]) -> Void
    ) {
        isCalledRequest = true
        
        if error == nil {
            completionHandler([])
        }
    }
}
