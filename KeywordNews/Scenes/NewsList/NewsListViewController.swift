//
//  ViewController.swift
//  KeywordNews
//
//  Created by JeongminKim on 2022/03/18.
//

import UIKit

final class NewsListViewController: UIViewController {
    private lazy var presenter = NewsListPresenter(viewController: self)

}

extension NewsListViewController: NewsListProtocol {
    func setupNavigationBar() {
        
    }
}
