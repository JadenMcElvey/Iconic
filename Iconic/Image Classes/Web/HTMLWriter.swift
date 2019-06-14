//
//  HTMLWriter.swift
//  GCDTesting
//
//  Created by Jaden McElvey on 6/10/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import UIKit

class HTMLWriter
{
    static var image = UIImage()
    let port = UInt(8080)
    
    let baseHTML = """
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" >
    <title>&#x2800;</title>
    <link rel="apple-touch-icon" href="homeScreenImage">
  </head>
  <body>
    <div style="width:100%;display:inline-block;margin:10px">
        <div style="width:33%;display:inline-block"></div>
        <img style="width:33%;display:inline-block;margin-top:20px;margin-bottom:20px;border-radius:20px;" align="center" id="icon" src="homeScreenImage">
        <div style="width:33%;display:inline-block"></div>
    </div>
    <div >
        <h1 style="font-family:Lato;font-size:50px" align="center">Instructions</h1>
        <h2 style="font-family:Lato;font-size:40px;color:gray;font-weight:300" align="center">Follow the steps below to add to desktop.</h2>
    </div>
    <div style="height:600px;margin-left: 10%">
        <span style="width:70%;display:inline-block;height:400px;">
            <p style="font-family:Lato;font-size:30px;display:block;line-height:100px;padding:0px;margin:0px" align="center">Step 1: Tap the share button below</p>
            <p style="font-family:Lato;font-size:30px;display:block;line-height:100px;padding:0px;margin:0px" align="center">Step 2: Tap the add to homescreen button</p>
            <p style="font-family:Lato;font-size:30px;display:block;line-height:100px;padding:0px;margin:0px" align="center">Step 3: Tap "<b>Add</b>"</p>
        </span>
        <span style="width:20%;display:inline-block;height:300px;">
            <img style="display:block;height:70px;margin-top:50px;margin-left:30%" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4wYKAjAH/l+hdgAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAAEiSURBVHja7dsxEoIwEEDRbIZTewCuHQsbCwqDIOz6fmsDebMQMmNr0ik9RonbiHIYa+5b6ibDhJyFMd6mJEzIFa3RqlXlHTI2sALIXTASo0RZjKQoURYiKUz8BUYilF4EIz5a+G8wTcjETur1PbL9HZJsB9bTYxR7qef8MJxd5EQoS3mMZChLaYSE9SYgAgJEQIDo+Oa3k/c4D9q67jHx+2237SbEI0tAgGhvR51lZThr+tU1DhPikSUgQAREQIAICBABASIgQAQEiIAICBABASIgQAQEiIAICBDtaCl0L2FCBASIgAAREAEBIiBABASIgAAREAEBIiBABASIgAAREAEBIiBABASIgAAREAEBIiBABKRiR/0telhKEwJEQIDo2p5g8TPpvHtqCQAAAABJRU5ErkJggg==">
            <img style="display:block;height:70px;margin-top:40px;margin-left:30%;border-radius:20px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QAAAB6AP+NJ7l0AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4wYKAjY5aWQbWwAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAADzSURBVHja7dzBEUNAGIZhjB41QE9mUIAqacBw2rEfz3uMg6xHNjn80c7zdjSqps4lACIgQAQEiIAAERAgAiIgQAQEiIAAERAgAiIgCfXJb34ah8vXl3X3CakF4+kYEAEBIiBABASIgAgIEAEBIiBABASIgAgIEAEBIiBAVLjig3JvzUiVOm/pIbzuixjJa7Jl+Q4RECCqEiT5bwFvralPXcDTr53Um8GWBURAgAgIEAEBIiBABERAgAgIEAEBIiBABERAgOhHIHdjPsnzYNHP7f3iIJ4tC4iAABEQIAICRECACIiAABEQIAICRECACIiARHQCprAdfK/fCBIAAAAASUVORK5CYII=">
        </span>
    </div>
  </body>
</html>
"""
    
    func imageToBase64(img: UIImage) -> String
    {
        var base64 = ""
        let imgData = UIImage.pngData(img)
        base64 = imgData()!.base64EncodedString()
        print(base64)
        return base64
    }
    
    func makeHTMLString() -> String
    {
        let HTMLString = baseHTML
        return HTMLString.replacingOccurrences(of: "homeScreenImage", with: imageToBase64(img: HTMLWriter.image))
    }
    
    func makeBaseURL() -> String
    {
        let name = UIKit.UIDevice.current.name
        let lowerName = name.lowercased()
        let noSpaceLowerName = lowerName.replacingOccurrences(of: " ", with: "-")
        let urlString = "http://\(noSpaceLowerName).local:" + String(port)
        return urlString
    }
}
