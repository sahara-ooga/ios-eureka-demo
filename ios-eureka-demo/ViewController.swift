//
//  ViewController.swift
//  ios-eureka-demo
//
//  Created by k_motoyama on 2017/03/19.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit
import Eureka

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 一つ目のセクション
        form +++ Section("Section1")
            // テキストフィールドの生成
            <<< TextRow("text"){ row in
                row.title = "Text Row"
                row.placeholder = "Enter Text"
                
            }.onChange {row in
                print(row.value!)
            }
            
            // detepickerの生成
            <<< DateRow("date"){ row in
                row.title = "Date Row"
                
            }.onChange {row in
                print(row.value!)
            }
        
        form +++ Section("Section2")
            // ラベルの生成
            <<< LabelRow(){ row in
                row.title = "Label Row"
            }
            // スイッチの生成
            <<< SwitchRow("switch"){ row in
                row.title = "Switch Row"
            }.onChange {row in
                print(row.value!)
            }
        
    }


    

}

