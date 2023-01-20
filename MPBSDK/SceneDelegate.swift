//
//  SceneDelegate.swift
//  MPBSDK
//
//  Created by Nick Sagan on 20.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
//        let controller = UINavigationController(rootViewController: ViewController())
        
        MPB.setup(color: .systemRed)
        let controller = MPB.controller()
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = controller
        window?.backgroundColor = .clear
        window?.makeKeyAndVisible()
    }
}
