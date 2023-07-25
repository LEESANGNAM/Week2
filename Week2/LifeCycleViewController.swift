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
    /* ???: 탭3의 current context 방식으로 모달창을 열고 탭2로 이동했다가 탭3로 이동하여 열린 모달창을 닫으면 검은 화면이 뜬다.
        ???: show 방식도 똑같이 해봤는데 show를 닫으면 탭3가 잘뜬다.
        검색 해보니 show 방식은 뷰 스택 구조에 의해
      1. show 가 호출되면 이전에 보여주던 뷰를 뷰스택에 넣고 가장 위에 show 를 보여준다
     2. 탭 2로 이동했다가 탭3로 돌아오면 뷰스택 가장 위에있는 show를 꺼내서 보여주고
     3. show를 닫으면 스택 다음에 쌓여있는 탭 3 화면을 가져오는거 같다.
     
     current context 는 해당 뷰 컨트롤러 위에 덮어 씌우는 모달 형식으로 표시된다.
     1.탭3 에서 current context를 호출하면. 위의 show 방식과 다르게 탭3를 스택에 넣지 않고  탭3뷰컨트롤러 위에 덮어 씌우는거같다.
     2. 탭 2로 이동했다가 탭 3로 돌아오면 독립적인 뷰 계층 구조를 가지고 있는 current context가 뜨고,
     3. 해당 모달 창을 닫으면, 모달뷰컨트롤러가 메모리에서 해제되서 검은화면이 나오는걸로 보인다.
     4. 화면을 넘어가기전 dismiss로 모달을 닫고 넘어가는 식으로 해결 해야 할 것 같다.
     
     주말에 시간이 있으면 조금 더 자세히 알아봐야할 것 같다.
        
     */
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
