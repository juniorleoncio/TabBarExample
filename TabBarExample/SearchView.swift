//
//  SearchView.swift
//  TabBarExample
//
//  Created by leoncio on 6/10/23.
//

import UIKit

class SearchView: UIViewController {

    private let textHello: UILabel = {
           let textLabel = UILabel()
           textLabel.translatesAutoresizingMaskIntoConstraints = false
           textLabel.text = "Search View Controller"
           textLabel.font = .systemFont(ofSize: 30)
           textLabel.textColor = .orange
           return textLabel
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        settings()
    }

    func settings() {
            view.addSubview(textHello)
            NSLayoutConstraint.activate([
                textHello.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                textHello.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            ])
        }

}
