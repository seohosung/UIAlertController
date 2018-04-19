//
//  ViewController.swift
//  UIAlertController
//
//  Created by D7703_24 on 2018. 4. 19..
//  Copyright © 2018년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        let myAlertController = UIAlertController(title: "알람", message: "설정된 시간이 되었습니다.", preferredStyle: .actionSheet)
        
        //얼럿트액션 만들기
        let okAction = UIAlertAction(title: "확인", style: .default, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
            
        })

        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
            
        })
        
        let testAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        
    //얼렛트액션을 얼렛트컨트롤러에 넣기
    myAlertController.addAction(okAction)
    myAlertController.addAction(cancelAction)
    myAlertController.addAction(testAction)
        
    // 화면에 출력
    present(myAlertController, animated: true, completion: nil)
    }
    
}

