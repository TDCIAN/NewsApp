//
//  NewsListPresenter.swift
//  KeywordNews
//
//  Created by JeongminKim on 2022/03/18.
//

import Foundation

protocol NewsListProtocol: AnyObject {
    func setupNavigationBar()
}

final class NewsListPresenter {
    private weak var viewController: NewsListProtocol?
    
    init(viewController: NewsListProtocol) {
        self.viewController = viewController
    }
}
