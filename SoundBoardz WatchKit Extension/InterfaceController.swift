//
//  InterfaceController.swift
//  SoundBoardz WatchKit Extension
//
//  Created by Chun Yang on 7/22/15.
//  Copyright (c) 2015 Caroline Dikibo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBAction func Suspense() {
        sendMessageToParentAppWithString("suspense")
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func sendMessageToParentAppWithString(messageText: String) {
        let infoDictionary = ["message" : messageText]
        
        WKInterfaceController.openParentApplication(infoDictionary) {
            (replyDictionary, error) -> Void in
            
            if let castedResponseDictionary = replyDictionary as? [String: String],
                responseMessage = castedResponseDictionary["message"]
            {
                println(responseMessage)
            }
        }
    }

}
