//
//  TraitViewController.swift
//  Week2
//
//  Created by 이상남 on 2023/07/24.
//

import UIKit

class TrandtionViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //다른화면에서 transitionViewController로 돌아 올때 (unwind) 사용하는 기능
    // 액션연결 하지 않고, 직접 작성했습니다.
    @IBAction func unwindToHome(_ segue: UIStoryboardSegue){
        
    }
    
    
    
}
