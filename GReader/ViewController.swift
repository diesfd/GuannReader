//
//  ViewController.swift
//  GReader
//
//  Created by Li Yuetong on 2/7/21.
//

import Cocoa
import Carbon.HIToolbox

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        NSEvent.addLocalMonitorForEvents(matching: .keyDown) {
                 if self.myKeyDown(with: $0) {
                    return nil
                 } else {
                    return $0
                 }
              }
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    /**
     * A glabal keyboard event listener.
     */
    func myKeyDown(with event: NSEvent) -> Bool {
          // handle keyDown only if current window has focus, i.e. is keyWindow
          guard let locWindow = self.view.window,
             NSApplication.shared.keyWindow === locWindow else { return false }
          switch Int( event.keyCode) {
          case kVK_ANSI_J:
            Swift.print("j")
            return true
          default:
             return false
          }
       }
    
    
}

