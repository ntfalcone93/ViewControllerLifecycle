//
//  SecondViewController.swift
//  ViewLifecycle
//
//  Created by Nathan Falcone on 3/14/18.
//  Copyright © 2018 Falcone Development. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var whiteButton: UIButton!
    
    // MARK: Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton()
    }
    
    // MARK: @IBAction
    
    @IBAction func buttonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: View setup
    
    func designButton() {
        // Make the button a circle
        whiteButton.layer.cornerRadius = whiteButton.frame.height / 2
    }
}
