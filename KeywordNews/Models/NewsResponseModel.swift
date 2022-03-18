//
//  NewsResponseModel.swift
//  KeywordNews
//
//  Created by JeongminKim on 2022/03/18.
//

import Foundation

struct NewsResponseModel: Decodable {
    var items: [News] = []
}

struct News: Decodable {
    let title: String
    let link: String
    let description: String
    let pubDate: String
}
