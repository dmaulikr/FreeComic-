//
//  AppDelegate.swift
//  FreeComic
//
//  Created by Enrik on 1/7/17.
//  Copyright © 2017 Enrik. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let cache = NSCache<NSString, CacheStories>()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let vc = HomeViewController()
        let menu = MenuViewController()
        let main = SWRevealViewController(rearViewController: menu, frontViewController: vc)
        main?.rearViewRevealWidth = UIScreen.main.bounds.width / 3 * 2
        
        if let window = self.window {
            let nav = UINavigationController(rootViewController: main!)
            window.rootViewController = nav
            nav.isNavigationBarHidden = true
            window.makeKeyAndVisible()
            
        }
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        return true
    }
    
    func changeRootView(vc: UIViewController) {
        if let window = self.window {
            let nav = UINavigationController(rootViewController: vc)
            window.rootViewController = nav
            nav.isNavigationBarHidden = true
        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
