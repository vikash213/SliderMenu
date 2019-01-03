//
//  ViewController.swift
//  SliderMenu
//
//  Created by Appinventiv on 02/01/19.
//  Copyright © 2019 Vikash. All rights reserved.
//

protocol NotifySliderView {
    func notifyView()
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var wcLabel: UILabel!
    
    var isNavigationShown: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.containerView.center.x += self.view.bounds.width
    }
    
    @IBAction func clickMenuButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1.0) {
            if self.isNavigationShown {
                //self.wcLabel.isHidden = true
                self.containerView.center.x += self.view.bounds.width
                self.wcLabel.alpha = 0.0
               // self.topView.center.x = self.view.center.x + self.containerView.center.x
               // self.topView.backgroundColor = UIColor.black
            } else {
                //self.wcLabel.isHidden = false
                self.containerView.center.x -= self.view.bounds.width
                //self.topView.center.x  = self.view.center.x
                self.wcLabel.alpha = 1.0
                //self.topView.backgroundColor = UIColor.white
                
            }
            self.isNavigationShown = !self.isNavigationShown
        }
    }
    

}

