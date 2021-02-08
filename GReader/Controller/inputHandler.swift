//
//  inputHandler.swift
//  GReader
//
//  Created by Li Yuetong on 2/8/21.
//

import Foundation
import Cocoa

extension ViewController {
    
    /**
     * A glabal keyboard event listener.
     */
    func myKeyDown(with event: NSEvent) -> Bool {
        // handle keyDown only if current window has focus, i.e. is keyWindow
        guard let locWindow = self.view.window,
              NSApplication.shared.keyWindow === locWindow else { return false }
        Swift.print(event.characters!)
        if self.inputBuffer.count <= 20 {
            self.inputBuffer.append(event.characters!)
        } else {
            self.inputBuffer = ""
        }
        self.inputTextLabel.stringValue = self.inputBuffer
        
        return true
        //        switch Int( event.keyCode) {
        //        case kVK_ANSI_J:
        //            Swift.print("j")
        //            return true
        //        default:
        //            return false
        //        }
    }
}
