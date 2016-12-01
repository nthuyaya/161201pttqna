//
//  ViewController.swift
//  pttqna
//
//  Created by yaya on 2016/12/1.
//  Copyright © 2016年 yaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    struct Qna{
        var question = ""
        var answer = ""
            }
    
    
    @IBOutlet weak var countLabel: UILabel! //第幾題
    @IBOutlet weak var questionLabel: UILabel! //題目
    @IBOutlet weak var answerLabel: UILabel! //答案
    @IBOutlet weak var fox1: UIImageView! //未達的狐狸圖
    @IBOutlet weak var fox2: UIImageView! //回答問題的狐狸圖
    
    var count = 0
    var qnaArray = [Qna(question: "3樓的樓上是幾樓？", answer: "2樓"),
                    Qna(question: "看到哪三個數字需下跪？", answer: "118"),
                    Qna(question: "年過30保有童貞的男性為？", answer: "魔法師"),
                    Qna(question: "PTT戰神是？", answer: "蘇美"),
                    Qna(question: "obov是哪個教派的教主?", answer: "母豬教"),
                    Qna(question: "8+9=?", answer: "八家將"),
                    Qna(question: "2沒壞,猜一字？", answer: "噓"),
                    Qna(question: "PTT女板又名？", answer: "灑花板"),
                    Qna(question: "Z>B是什麼意思？", answer: "利大於弊"),
                    Qna(question: "鄉民爆料文的起始句是？", answer: "我夢到")]
    
    
    //秀答案
    @IBAction func answerBtn(_ sender: Any) {
        fox1.isHidden = true
        fox2.isHidden = false
        answerLabel.isHidden = false
    }
    
    //下一題   
    @IBAction func nextBtn(_ sender: Any) {
        count += 1
        if count == 10{
            count = 0
        }
        nextQuestion()
        fox1.isHidden = false
        fox2.isHidden = true
    }
    
    
    func nextQuestion(){
        questionLabel.text = qnaArray[count].question
        answerLabel.text = qnaArray[count].answer
        
        countLabel.text = "\(count+1)"
        answerLabel.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fox1.isHidden = false
        nextQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

