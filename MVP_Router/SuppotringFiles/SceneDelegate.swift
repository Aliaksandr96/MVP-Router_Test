//
//  SceneDelegate.swift
//  MVP_Router
//
//  Created by Aliaksandr Hunko on 24/10/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        
       let window = UIWindow(windowScene: windowsScene)
        self.window = window
        let initialNavigationController = UINavigationController()
        window.rootViewController = initialNavigationController
        window.makeKeyAndVisible()
        
        let _ = FirstOnboardingRouter(navigationController: initialNavigationController,window: window)
        
    }
}

