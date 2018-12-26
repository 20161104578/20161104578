//
//  ViewController.swift
//  watchTutorial
//
//  Created by 20161104578 on 2018/12/26.
//  Copyright © 2018 20161104578. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    var btn1:UIButton?
    var timer:Timer?
    var label:UILabel?
    var a = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        let button = UIButton(frame:CGRect(x: 20, y: 400, width:50, height: 50))
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(startCLick(item:)), for: .touchUpInside)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        button.setTitle("开始", for: .normal)
        btn1 = button
        view.addSubview(button)
        
        let btn = UIButton(frame:CGRect(x: 300, y: 400, width: 50, height: 50))
        btn.backgroundColor = .blue
        btn.addTarget(self, action: #selector(startCLick(item:)), for: .touchUpInside)
        btn.setTitle("暂停", for: UIControl.State.normal)
        view .addSubview(btn)
        
        let lab = UILabel(frame: CGRect(x: 50, y: 50, width: view.frame.size.width - 100, height: 50))
        lab.textAlignment = .center
        lab.font = .systemFont(ofSize: 18)
        lab.backgroundColor = .red
        lab.textColor = .white
        view.addSubview(lab)
        label = lab
        lab.text = "swift stopWatch Demo"
        
    }
    
    @objc func timerIntervalx() {
        a+=1;
        label?.text = "swift stopWatch Demo \(a)"
    }
    
    @objc @objc func startCLick(item:UIButton) {
        if item.isEqual(btn1) {
            timeStart()
        }
        else
        {
            timePause()
        }
    }
    
    func timeStart() {
        
        if !(timer != nil) {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerIntervalx), userInfo: nil, repeats: true)
        }
    }
    
    func timePause() {
        timer?.invalidate()
        timer = nil
    }
    
    
}
