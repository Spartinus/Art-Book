//
//  AppDelegate.swift
//  Art Book
//
//  Created by xjbeta on 2018/9/30.
//  Copyright © 2018 xjbeta. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        removeExpired()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        removeExpired()
    }
    
    func removeExpired() {
        print(ImageCache.cacheSize())
        ImageCache.removeExpired()
        print(ImageCache.cacheSize())
    }
}
