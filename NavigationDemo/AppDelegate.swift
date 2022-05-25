//
//  AppDelegate.swift
//  NavigationDemo
//
//  Created by Vu Thanh Nam on 10/05/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    // launch
    
    //first run when run app
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // do something
        print("Will finish Lauching - First run at AppDelegate")
        return true
    }


    //
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Did finish Launching - Second run at AppDelegate")
        return true
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        //do some thing
        print("app will enter foreground")
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        // do something
        print("app is acting")
    }
    
    
    
    //termination



    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        print("UISceneConfiguration with configuration - Step 3 run and init UI at AppDelegate")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        print("did Discard scene sessions - Step 10 At 2 AppDelegate")
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
    


}

