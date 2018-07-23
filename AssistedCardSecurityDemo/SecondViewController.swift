//
//  SecondViewController.swift
//  AssistedCardSecurityDemo
//
//  Created by Yung Dai on 2018-07-23.
//  Copyright © 2018 CIBC Digital. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var appView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        appView.layer.cornerRadius = 20
    }
    
    @IBAction func cancelCustomerVC(_ sender: Any) {
        
        let alert = UIAlertController(title: "Security Authorization Required", message: "Please authenticate with Touch ID", preferredStyle: .alert)
        
        let okay = UIAlertAction.init(title: "Ok", style: .default) { _ in
            self.dismiss(animated: true, completion: nil)
        }
        
        let cancel = UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        alert.addAction(okay)
        
        self.present(alert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
