//
//  TabBarViewController.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 21/11/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = HomeViewController()
        let vc2 = SearchViewController()
        let vc3 = LibraryViewController()
        
        vc1.title = "Browse"
        vc2.title = "Search"
        vc3.title = "Library"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        nav1.navigationBar.tintColor = UIColor(red: 0.98, green: 0.16, blue: 0.26, alpha: 1.00)
        nav2.navigationBar.tintColor = UIColor(red: 0.98, green: 0.16, blue: 0.26, alpha: 1.00)
        nav3.navigationBar.tintColor = UIColor(red: 0.98, green: 0.16, blue: 0.26, alpha: 1.00)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 3)
        
        tabBar.tintColor = UIColor(red: 0.98, green: 0.16, blue: 0.26, alpha: 1.00)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: false)
    }

}
