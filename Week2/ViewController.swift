//
//  ViewController.swift
//  Week2
//
//  Created by 이상남 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(firstImageView.isUserInteractionEnabled)
        print(view.isUserInteractionEnabled)
    }
    
    
    @IBAction func testFirstTapGesture(_ sender: UITapGestureRecognizer) {
        print("first")
    }
    
    @IBAction func testSecondTapGesture(_ sender: UITapGestureRecognizer) {
        print("second")
    }
    
}

