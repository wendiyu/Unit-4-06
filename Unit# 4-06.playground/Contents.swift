

// Created on: Nov-13-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for the check if 2 strings are the same or not
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLable = UILabel()
    let word1Lable = UILabel()
    let word1TextField = UITextField()
    let word2Lable = UILabel()
    let word2TextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
     
    func uppercaseFunction(word1: String, word2: String) -> Bool {
        
        if word1.uppercased() == word2.uppercased() {
            answerLable.text = "These two words are the same."
            return true
        }
        else {
            answerLable.text = "These two words are not the same."
            return false
        }
    }
    

    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter a word in capital or small randomly & we will check the they are the same or not."
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        word1Lable.text = "Enter a word randomly in capital and small"
        view.addSubview(word1Lable)
        word1Lable.translatesAutoresizingMaskIntoConstraints = false
        word1Lable.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 10).isActive = true
        word1Lable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        word1TextField.borderStyle = UITextField.BorderStyle.roundedRect
        word1TextField.placeholder = "Put a word into field "
        view.addSubview(word1TextField)
        word1TextField.translatesAutoresizingMaskIntoConstraints = false
        word1TextField.topAnchor.constraint(equalTo: word1Lable.bottomAnchor, constant: 5).isActive = true
        word1TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        word2Lable.text = "Enter a word randomly in capital and small "
        view.addSubview(word2Lable)
        word2Lable.translatesAutoresizingMaskIntoConstraints = false
        word2Lable.topAnchor.constraint(equalTo: word1TextField.bottomAnchor, constant: 10).isActive = true
        word2Lable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        word2TextField.borderStyle = UITextField.BorderStyle.roundedRect
        word2TextField.placeholder = "Put a word into field "
        view.addSubview(word2TextField)
        word2TextField.translatesAutoresizingMaskIntoConstraints = false
        word2TextField.topAnchor.constraint(equalTo: word2Lable.bottomAnchor, constant: 5).isActive = true
        word2TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Check", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(checkWord), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: word2TextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func checkWord() {
        // show answers 
        
        var letter1 : String =  String(word1TextField.text!)
        var letter2 : String =  String(word2TextField.text!)
        
        var comfirm = uppercaseFunction(word1: String(letter1),word2: String(letter2))
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
