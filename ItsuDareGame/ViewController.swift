//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 岡本　隆誠 on 2015/05/17.
//  Copyright (c) 2015年 岡本　隆誠. All rights reserved.  //jafsb;g:bdfnb:


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    var itsuArray:[String] = ["１年前","１週間前","昨日","今日","１億年前","１秒前"]
    var dokodeArray:[String] = ["山の上で","アメリカで","学校で","クラスで","宇宙で","月で"]
    var daregaArray:[String] = ["僕が","大統領が","先生が","友達が","アイスココアが","母が"]
    var doshitaArray:[String] = ["叫んだ","演説した","怒った","踊った","泣いた","転んだ"]
    
    var index:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func change() {
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        //indexの値を＋１する
        index = index + 1
        
        //numberの値が３より多くなったら０に戻す
        if index > 5{
            index = 0
        }
        
        
    }
    @IBAction func  reset() {

       
      //それぞれのラベルを元に戻す
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        //indexを初期化する
        index = 0
        

        
    }
    @IBAction func  random(){
        
        //乱数を生成して、それをそれぞれのindexの中に入れる
        var itsuIndex = Int(arc4random_uniform(6))
        var dokodeIndex = Int(arc4random_uniform(6))
        var daregaIndex = Int(arc4random_uniform(6))
        var doshitaIndex = Int(arc4random_uniform(6))
        
    //コンソール出力して、それぞれの値を確かめよう
        NSLog("いつ:%d", itsuIndex)
        NSLog("どこで:%d", itsuIndex)
        NSLog("だれが:%d", itsuIndex)
        NSLog("どうした:%d", itsuIndex)
        
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    
        
    }


}










