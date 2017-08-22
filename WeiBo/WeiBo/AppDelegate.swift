//
//  AppDelegate.swift
//  WeiBo
//
//  Created by ChaoGao on 2017/8/20.
//  Copyright © 2017年 GaoChao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //设置全局的tabBar的颜色
        UITabBar.appearance().tintColor = UIColor.orange
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        return true
    }

    
}

