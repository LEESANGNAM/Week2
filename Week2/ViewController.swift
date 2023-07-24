//
//  ViewController.swift
//  Week2
//
//  Created by 이상남 on 2023/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    
    let list = ["가사1","가사2","가사3","가사4","가사5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(firstImageView.isUserInteractionEnabled)
        print(view.isUserInteractionEnabled)
    }
    
    
    @IBAction func testFirstTapGesture(_ sender: UITapGestureRecognizer) {
        print("first")
    }
    
    //
    @IBAction func testSecondTapGesture(_ sender: UITapGestureRecognizer) {
        
        //1. 다시 앨범 못봄
        //        firstImageView.isHidden = true
        //        secondImageView.isHidden = true
        //        thirdImageView.isHidden = true
        
        // 2. 조건문으로 대응
        //        if firstImageView.isHidden == true{
        //            firstImageView.isHidden = false
        //            secondImageView.isHidden = false
        //            thirdImageView.isHidden = false
        //        }else{
        //            firstImageView.isHidden = true
        //            secondImageView.isHidden = true
        //            thirdImageView.isHidden = true
        //        }
        
        //3.
//        firstImageView.isHidden = !firstImageView.isHidden
//        secondImageView.isHidden = !secondImageView.isHidden
//        thirdImageView.isHidden = !thirdImageView.isHidden
//
        // 4. 함수
//        firstImageView.isHidden.toggle()
//        secondImageView.isHidden.toggle()
//        thirdImageView.isHidden.toggle()
        
        //5. @@@ ? ㅇㅇ: ㄴㄴ
        firstImageView.isHidden = firstImageView.isHidden == true ? false : true
        secondImageView.isHidden.toggle()
        thirdImageView.isHidden.toggle()
        
        
    }
    
    @IBAction func palyButtonTapped(_ sender: UIButton) {
        
        print(sender.tag)
        print(list[sender.tag - 1])
    }
    
    
    
    
    

}

