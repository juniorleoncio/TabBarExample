//
//  MainTabView.swift
//  TabBarExample
//
//  Created by leoncio on 6/10/23.
//

import UIKit

class MainTabView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        settingsBar()
    }
    

    func settingsBar() {
        
        let home = UINavigationController(rootViewController: HomeView())
        let search = UINavigationController(rootViewController: SearchView())
        let explore = UINavigationController(rootViewController: ExploreView())
        let profile = UINavigationController(rootViewController: ProfileView())
        
        home.tabBarItem.image = UIImage(systemName: "house")
        search.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        explore.tabBarItem.image = UIImage(systemName: "square.and.pencil")
        profile.tabBarItem.image = UIImage(systemName: "person")
        
        home.tabBarItem.title = "Home"
        search.tabBarItem.title = "Search"
        explore.tabBarItem.title = "Explore"
        profile.tabBarItem.title = "Profile"
        
        tabBar.tintColor = .label
        
        setViewControllers([home, search, explore, profile], animated: true)
    }

}
