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


enum word: String {
    case 머선129 = "무슨일이야?"
    case 무물보 = "무엇이든지 물어보세요"
    case 어쩔티비 = "어쩌라고 티비나 봐"
    case 쿠쿠루삥뽕 = "ㅋㅋㅋㅋㅋㅋ(비웃음)"
    case 알잘딱깔쎈 = "알아서 잘 딱 깔끔하고 센스있게"
    case 삼귀자 = "사귀기 전 단계"
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
        
        switch self.userTextField.text {
        case "머선129":
            resultLabel.text = word.머선129.rawValue
        case "무물보":
            resultLabel.text = word.무물보.rawValue
        case "어쩔티비":
            resultLabel.text = word.어쩔티비.rawValue
        case "쿠쿠루삥뽕":
            resultLabel.text = word.쿠쿠루삥뽕.rawValue
        case "알잘딱깔쎈":
            resultLabel.text = word.알잘딱깔쎈.rawValue
        case "삼귀자":
            resultLabel.text = word.삼귀자.rawValue
        default:
            resultLabel.text = "지원하지 않거나 잘못된 텍스트를 입력하셨습니다."
        }
        
        view.endEditing(true)
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
    
    @IBAction func tapGesture(_ sender: Any) {
        view.endEditing(true)
    }
    
    
}

