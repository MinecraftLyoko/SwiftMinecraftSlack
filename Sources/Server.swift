//
//  Server.swift
//  SwiftMinecraftSlack
//
//  Created by Rhett Rogers on 10/12/15.
//  Copyright © 2015 Rhett Rogers. All rights reserved.
//

import Foundation


class Server {
    static var instance: HttpServer = {
        return HttpServer()
    }()
    
    class func start() {
        Server.routes()
        MinecraftServer.runJava()
        
        instance.start()
    }
    
    class private func routes() {
        instance["/hello"] = { .OK(.HTML("You asked for " + $0.url)) }
    }
    
}