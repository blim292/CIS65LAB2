//
//  SecondViewController.swift
//  CIS22C_LAB2
//
//  Created by Brian Lim on 10/24/16.
//  Copyright © 2016 Brian Lim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var aboutMeText: UITextView!
    @IBOutlet var thumbsUp: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let topColor = UIColor(red: (15/255.0), green: (118/255.0), blue: (128/255.0), alpha: 1)
        let bottomColor = UIColor(red: (84/255.0), green: (187/255.0), blue: (187/255.0), alpha: 1)
        
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocation: [Float] = [0.0, 1.0]
        
        let gradientLayer : CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocation
        
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
//        let layer = CAGradientLayer()
//        layer.frame = view.bounds
//        layer.colors = [UIColor.lightGrayColor().CGColor, UIColor.blueColor().CGColor]
//        view.layer.addSublayer(layer)
        
        textLabel.text = "Thank You for checking out the Animal Encyclopedia!"
        aboutMeText.text = aboutMeText.text + "\n\nThis application was created for the sole purpose of demoing skills learned in iOS programming taught by Professor Goel.\n\nPlease forward any comments, questions, and bugs to blim292@gmail.com. \n\n"
        thumbsUp.image = UIImage(named: "thumbs_up")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

