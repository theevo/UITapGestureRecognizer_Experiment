//
//  ViewController.swift
//  UITapGestureRecognizer_Experiment
//
//  Created by Theo Vora on 4/14/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var funView: UIView!
    @IBOutlet weak var youTapLabel: UILabel!
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youTapLabel.alpha = 0.0 // keep it hidden
        
        let gRecognizer = UITapGestureRecognizer(target: self, action: #selector(updateLabel))
        gRecognizer.numberOfTapsRequired = 1
        funView.addGestureRecognizer(gRecognizer)
        
        
//        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeColor))
//        gestureRecognizer.numberOfTapsRequired = 3
        
//        funView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func updateLabel(_ sender: UITapGestureRecognizer) {
        youTapLabel.alpha = 1.0
        
        UIView.animate(withDuration: 1.0) {
            self.youTapLabel.alpha = 0.0
        }
    }
    
    @objc func changeColor(_ sender: UITapGestureRecognizer) {
        funView.backgroundColor = UIColor.red
        
        let tappedView = sender.view!
        tappedView.layer.borderWidth = 5.0
        tappedView.layer.borderColor = UIColor.purple.cgColor
    }

}

