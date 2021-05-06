//
//  SceneDelegate.swift
//  StarWarsApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            
            let window = UIWindow(windowScene: windowScene)
            let random = ViewController()
            let navigation = UINavigationController(rootViewController: random)
            window.rootViewController = navigation
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

