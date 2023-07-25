//
//  LifeCycleViewController.swift
//  Week2
//
//  Created by 이상남 on 2023/07/25.
//

import UIKit

class LifeCycleViewController: UIViewController {
    // 루트뷰에서 한번 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LifeCycleViewController",#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("LifeCycleViewController",#function)
        print("화면 나올예정")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("LifeCycleViewController",#function)
        print("짜잔")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("LifeCycleViewController",#function)
        print("사라질예정")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("LifeCycleViewController",#function)
        print("사라짐")
    }
}
