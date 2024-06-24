//
//  SearchViewController.swift
//  MovieDB
//
//  Created by astanahub on 17.06.2024.
//

import UIKit

class SearchViewController: UIViewController {
    
    
    lazy var search:UISearchBar = {
        let search = UISearchBar()
        search.delegate = self
        return search
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI()
    {
        view.addSubview(search)
        search.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(40)
        }
    }

}

extension SearchViewController:UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchBar.text ?? "")
    }
}
