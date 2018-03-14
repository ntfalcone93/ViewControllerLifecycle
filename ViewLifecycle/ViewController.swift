//
//  ViewController.swift
//  ViewLifecycle
//
//  Created by Nathan Falcone on 3/13/18.
//  Copyright © 2018 Falcone Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Gets called when the view is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View did load")
    }
    
    // Gets called when the view is about to appear on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("View will appear")
    }
    
    // Gets called when the view does appear on the screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("View did appear")
    }
    
    // Gets called when the view is about to be removed from the screen
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("View will disappear")
    }
    
    // Gets called when the view is removed from the screen
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("View did disappear")
    }
}
