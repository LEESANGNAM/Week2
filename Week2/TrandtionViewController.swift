//
//  TraitViewController.swift
//  Week2
//
//  Created by 이상남 on 2023/07/24.
//

import UIKit
import Kingfisher

class TrandtionViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var actorImageView: UIImageView!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImage(urlString:  "https://image.newsis.com/2023/05/04/NISI20230504_0001258444_web.jpg")
       
    }
    
    func setUpImage(urlString : String){
        let url = URL(string: urlString)
        actorImageView.kf.setImage(with: url)
    }
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == Actor.man.rawValue{
            // http( apple block) - app Transport Secutity Setting
            setUpImage(urlString:  "https://image.newsis.com/2023/05/04/NISI20230504_0001258444_web.jpg")
           
            
        }else if sender.selectedSegmentIndex == Actor.woman.rawValue{
            setUpImage(urlString:  "https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp")

        }else{
            print("오류")
        }
        
    }
    //다른화면에서 transitionViewController로 돌아 올때 (unwind) 사용하는 기능
    // 액션연결 하지 않고, 직접 작성했습니다.
    @IBAction func unwindToHome(_ segue: UIStoryboardSegue){
        
    }
    
    
    
}
