//
//  ViewController.swift
//  GReader
//
//  Created by Li Yuetong on 2/7/21.
//

import Cocoa
import Carbon.HIToolbox

class ViewController: NSViewController {
    
    @IBOutlet weak var inputTextLabel: NSTextField!
    var inputBuffer = ""
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
    
}

