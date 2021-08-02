//
//  SceneDelegate.swift
//  GitClient
//
//  Created by Alexander Pelevinov on 31.07.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appStartManager: AppStartManager?
    
    @available(iOS 13.0, *)
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        appStartManager = AppStartManager(window: window)
        appStartManager?.start()
    }
    
}

