//
//  ViewController.swift
//  ViewLifecycle
//
//  Created by Nathan Falcone on 3/13/18.
//  Copyright © 2018 Falcone Development. All rights reserved.
//

import UIKit

// TODO: Make 5 methods that you believe would be appropriate to call in each one of the ViewController's lifecycle methods

class FirstViewController: UIViewController {
    
    @IBOutlet weak var blueButton: UIButton!
    
    // MARK: Lifecycle methods
    
    // Gets called when the view is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Gets called when the view is about to appear on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    // Gets called when the view does appear on the screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    // Gets called when the view is about to be removed from the screen
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    // Gets called when the view is removed from the screen
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
}
