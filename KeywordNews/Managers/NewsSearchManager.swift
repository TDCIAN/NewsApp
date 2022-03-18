//
//  NewsSearchManager.swift
//  KeywordNews
//
//  Created by JeongminKim on 2022/03/18.
//

import Foundation
import Alamofire

protocol NewsSearchManagerProtocol: AnyObject {
    func request(
        from keyword: String,
        start: Int,
        display: Int,
        completionHandler: @escaping ([News]) -> Void
    )
}

struct NewsSearchManager {
    func request(
        from keyword: String,
        start: Int,
        display: Int,
        completionHandler: @escaping ([News]) -> Void
    ) {
        guard let url = URL(string: "https://openapi.naver.com/v1/search/news.json") else { return }
        
        let parameters = NewsRequestModel(
            start: start,
            display: display,
            query: keyword
        )
        
        let headers: HTTPHeaders = [
            "X-Naver-Client-Id": "gxg5FUsGBBL3VqwT8C88",
            "X-Naver-Client-Secret": "KeKGMRmjwk"
        ]
        
        AF
        .request(
            url,
            method: .get,
            parameters: parameters,
            headers: headers
        )
        .responseDecodable(of: NewsResponseModel.self) { response in
            switch response.result {
            case .success(let result):
                completionHandler(result.items)
            case .failure(let error):
                print("error - \(error)")
            }
        }
        .resume()
    }
}