//
//  StartManager.swift
//  GitClient
//
//  Created by Alexander Pelevinov on 01.08.2021.
//

import UIKit

final class AppStartManager {
    
    private var window: UIWindow?
    
    private lazy var rootViewController: UIViewController = {
        ViewController()
    }()
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
            let navVC = UINavigationController(rootViewController: rootViewController)
                    window?.rootViewController = navVC
                    window?.makeKeyAndVisible()
        }
    }
