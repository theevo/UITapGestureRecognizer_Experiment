//
//  ViewController.swift
//  UITapGestureRecognizer_Experiment
//
//  Created by Theo Vora on 4/14/20.
//  Copyright © 2020 Joy Bending. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeColor))
        gestureRecognizer.numberOfTapsRequired = 3
        
        funView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeColor() {
        funView.backgroundColor = UIColor.red
    }

}

