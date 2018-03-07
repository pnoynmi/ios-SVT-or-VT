//
//  AppDelegate.swift
//  Is it VT or SVT
//
//  Created by Abraham Salacata on 3/24/17.
//  Copyright © 2017 Abraham Salacata. All rights reserved.
//

import UIKit

var StandardParagraphStyle = NSMutableParagraphStyle()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let maroon = UIColor(red: 128/255, green: 0, blue: 0, alpha: 1)
    //Defines the color maroon using RGB notation

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
            
            UINavigationBar.appearance().barTintColor = maroon
            // Sets the background color of title bar
            
            UINavigationBar.appearance().tintColor = UIColor.white
            // Sets the background color of buttons in title bar
            
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            // Defines the background color of text in title bar
            
            StandardParagraphStyle.alignment = NSTextAlignment.justified
            StandardParagraphStyle.firstLineHeadIndent = 15
        
        return true
            
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

