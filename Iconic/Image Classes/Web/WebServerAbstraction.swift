//
//  GCDWebServerClass.swift
//  Iconic
//
//  Created by Jaden McElvey on 6/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import GCDWebServer

class WebServerAbstraction
{
    let webServer = GCDWebServer()
    
    func setHTML(siteHTML: String)
    {
        if(webServer.isRunning)
        {
            webServer.stop()
        }
        webServer.removeAllHandlers()
        webServer.addDefaultHandler(forMethod: "GET", request: GCDWebServerRequest.self, processBlock: {request in
            return GCDWebServerDataResponse(html: siteHTML)})
    }
    
    func start()
    {
        webServer.start(withPort: port, bonjourName: "GCD Web Server")
    }
    
}
