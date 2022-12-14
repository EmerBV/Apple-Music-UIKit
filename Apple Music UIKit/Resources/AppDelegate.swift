//
//  AppDelegate.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 21/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        // Si estoy logueado me llevará a la pantalla de:
        if AuthManager.shared.isSignedIn {
            AuthManager.shared.refreshIfNeeded(completion: nil)
            window.rootViewController = TabBarViewController()
        }
        // Sino me llevará a:
        else {
            let navVC = UINavigationController(rootViewController: WelcomeViewController())
            // Esto hace que el título de la vista aparezca en grande en vez de con letras pequeñas en la parte superior y en el medio
            navVC.navigationBar.prefersLargeTitles = true
            navVC.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
            
            window.rootViewController = navVC
        }
        
        window.makeKeyAndVisible()
        self.window = window
        
        //print(AuthManager.shared.signInURL?.absoluteString)
        
        /*
        AuthManager.shared.refreshIfNeeded { success in
            print(success)
        }
         */
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

