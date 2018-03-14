//
//  ViewController.swift
//  ViewLifecycle
//
//  Created by Nathan Falcone on 3/13/18.
//  Copyright © 2018 Falcone Development. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var blueButton: UIButton!
    
    // MARK: Lifecycle methods
    
    // Gets called when the view is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton()
    }
    
    // Gets called when the view is about to appear on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animateButtonOnScreen()
    }
    
    // Gets called when the view does appear on the screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        makeButtonPop()
    }
    
    // Gets called when the view is about to be removed from the screen
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        animateButtonOffScreen()
    }
    
    // Gets called when the view is removed from the screen
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        changeBackgroundColor()
    }

    // MARK: View setup methods
    
    /// Gives the blueButton its design
    func designButton() {
        // Make the button a circle
        blueButton.layer.cornerRadius = blueButton.frame.height / 2
        // Give the button a shadow to make it seem like its floating off the screen
        blueButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        blueButton.layer.shadowColor = UIColor.black.cgColor
        blueButton.layer.shadowRadius = 4
        blueButton.layer.shadowOpacity = 1
    }
    
    /// Keeps track of what color the backgroundColor should be
    var colorIndex = 0
    
    /// Changes the backgroundColor of the view
    func changeBackgroundColor() {
        let backgroundColors: [UIColor] = [.yellow, .red, .purple, .white]
        // Ensure that colorIndex never exceeds the amount of colors in backgroundColors
        if colorIndex == backgroundColors.count {
            colorIndex = 0
        }
        let color = backgroundColors[colorIndex]
        
        view.backgroundColor = color
        // Increment colorIndex
        colorIndex += 1
    }
    
    // MARK: Animation methods
    
    /// Makes the blueButton grow and then shrink back to its original size
    func makeButtonPop() {
        UIView.animate(withDuration: 0.25, delay: 0.5, options: [.curveEaseIn, .allowUserInteraction], animations: {
            self.blueButton.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        }) { (_) in
            UIView.animate(withDuration: 0.1, delay: 0.0, options: .curveEaseOut, animations: {
                self.blueButton.transform = .identity
            }, completion: nil)
        }
    }
    
    /// Animates the blueButton onto the screen from above the view
    func animateButtonOnScreen() {
        let yPosition = -(view.frame.height / 2) - (blueButton.frame.height)
        self.blueButton.transform = CGAffineTransform(translationX: 0, y: yPosition)
        
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn, animations: {
            self.blueButton.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    /// Animates the blueButton moving up and off the screen
    func animateButtonOffScreen() {
        let transform = CGAffineTransform(translationX: 0, y: -(view.frame.height / 2) - (blueButton.frame.height))
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseOut, animations: {
            self.blueButton.transform = transform
        }, completion: nil)
    }
}
