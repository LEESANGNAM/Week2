//
//  CalenderViewController.swift
//  Week2
//
//  Created by 이상남 on 2023/07/25.
//

import UIKit

class CalenderViewController: UIViewController {
    
    // 루트뷰에서 한번 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CalenderViewController",#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("CalenderViewController",#function)
        print("화면 나올예정")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("CalenderViewController",#function)
        print("짜잔")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("CalenderViewController",#function)
        print("사라질예정")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("CalenderViewController",#function)
        print("사라짐")
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func unwindToCalender(_ segue: UIStoryboardSegue){
        
    }
    
}
