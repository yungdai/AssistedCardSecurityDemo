//
//  ViewController.swift
//  AssistedCardSecurityDemo
//
//  Created by Yung Dai on 2018-07-23.
//  Copyright © 2018 CIBC Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var agentView: UIView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        agentView.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func popOverCustomerScreen() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        
        guard let popupVC = storyboard.instantiateViewController(withIdentifier: "clientVC") as? SecondViewController else { return }
        
        let popOver = popupVC.popoverPresentationController
        
        popOver?.sourceView = view
        popOver?.sourceRect = view.bounds
        
        self.present(popupVC, animated: true, completion: nil)
    }
    
//    func animateBlur() {
//        
//        UIViewPropertyAnimator.ani
//    }
    
    @IBAction func popOverCustomerVC(_ sender: Any) {
        
        popOverCustomerScreen()
    }
    
}

