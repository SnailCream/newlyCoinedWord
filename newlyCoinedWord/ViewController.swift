//
//  ViewController.swift
//  newlyCoinedWord
//
//  Created by 노준혁 on 2022/07/10.
//

import UIKit

func hashButtonStyle(btnNumber: UIButton, btnTitle: String){
    btnNumber.setTitle(btnTitle, for: .normal)
    btnNumber.setTitleColor(.black, for: .normal)
    btnNumber.layer.cornerRadius = 8
    btnNumber.layer.borderWidth = 1.0
    btnNumber.layer.borderColor = UIColor.black.cgColor
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var btnSearch: UIButton!
    
    @IBOutlet weak var btnHash1: UIButton!
    @IBOutlet weak var btnHash2: UIButton!
    @IBOutlet weak var btnHash3: UIButton!
    @IBOutlet weak var btnHash4: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.placeholder = "궁금한 신조어를 입력하세요!"
        
        hashButtonStyle(btnNumber: btnHash1, btnTitle: "윰차")
        hashButtonStyle(btnNumber: btnHash2, btnTitle: "실매")
        hashButtonStyle(btnNumber: btnHash3, btnTitle: "만반잘부")
        hashButtonStyle(btnNumber: btnHash4, btnTitle: "꾸안꾸")

        }
 
    
    
    @IBAction func btnSearchClicked(_ sender: UIButton) {
        if userTextField.text == "삼귀자" {
            resultLabel.text = "연애를 시작하기 전 썸 단계"
        }
        else if userTextField.text == "" {
            resultLabel.text = "검색어를 입력하세요!"
        }
        else {
            resultLabel.text = "지원하지 않는 신조어 입니다."
        }
    }
    
    
    @IBAction func btnHash1Clicked(_ sender: UIButton) {
        resultLabel.text = "유모차"
    }
    
    @IBAction func btnHash2Clicked(_ sender: UIButton) {
        resultLabel.text = "실시간 매니저"
    }
    
    @IBAction func btnHash3Clicked(_ sender: UIButton) {
        resultLabel.text = "만나서 반가워 잘 부탁해"
    }
    
    @IBAction func btnHash4Clicked(_ sender: UIButton) {
        resultLabel.text = "꾸민듯 안 꾸민듯"
    }
    
    
    
}

