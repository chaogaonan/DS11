//
//  MainViewController.swift
//  WeiBo
//
//  Created by ChaoGao on 2017/8/20.
//  Copyright © 2017年 GaoChao. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let jsonPath = Bundle.main.path(forResource: "MainVCSettings", ofType: "json") else{
            return
        }
        
        addChildViewController(childVC: "HomeViewController", title: "首页", imageName: "tabbar_home")
        addChildViewController(childVC: "MessageViewController", title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childVC: "DiccoverViewController", title: "发现", imageName: "tabbar_discover")
        addChildViewController(childVC: "ProfileViewController", title: "我", imageName: "tabbar_profile")
    }
    
    //通过字符串创建对象
    func addChildViewController(childVC: String, title : String, imageName :String) {
        
        //拿到命名空间
        guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else{
            return
        }
        //根据字符串获取对应的class
        guard let childClass = NSClassFromString(nameSpace + "." + childVC) else{
            return
        }
        //将AnyClass转成对应的控制器类型
        guard let childType = childClass as?UIViewController.Type else{
            return
        }
        //创建对应控制器对象
        let childVC = childType.init()
        
        childVC.tabBarItem.title = title
        childVC.tabBarItem.image = UIImage(named:imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let childNav = UINavigationController(rootViewController: childVC)
        
        addChildViewController(childNav)
        
    }

    func addChildViewController1(childVC: UIViewController, title : String, imageName :String) {
        
        childVC.tabBarItem.title = title
        childVC.tabBarItem.image = UIImage(named:imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let childNav = UINavigationController(rootViewController: childVC)

        addChildViewController(childNav)
        
    }
    
    
}
