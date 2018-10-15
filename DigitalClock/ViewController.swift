//
//  ViewController.swift
//  DigitalClock
//
//  Created by user on 2018/10/05.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    weak var timer:Timer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fire(_ :)), userInfo: nil, repeats: true)
        
        label.layer.cornerRadius = 20
        label.layer.borderColor = UIColor.lightGray.cgColor
        label.layer.borderWidth = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // タイマーの発火メソッド
    @objc func fire(_ timer:Timer) {
        
        // 今の日付時間
        let nowDate = Date()
        // 日付時間フォーマッタ
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        
        let clockString = formatter.string(from: nowDate)
        
        label.text = clockString
    }

}

