//
//  AppDelegate.swift
//  SwiftMinecraftSlack
//
//  Created by Rhett Rogers on 10/9/15.
//  Copyright © 2015 Rhett Rogers. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
//        MinecraftServer.runJava()
        _ = Player.loadPlayersFromFile()
        
        let chunk = MinecraftServer.instance.getChunkAtBlockCoords((x: 0, z: -32*16))
        chunk
        
        
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
        MinecraftServer.terminateServer()
    }

    
}

