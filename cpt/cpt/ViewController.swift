//
//  ViewController.swift
//  cpt
//
//  Created by 20161104578 on 2018/11/16.
//  Copyright © 2018 20161104578. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result_1: UITextField!
    
    @IBOutlet weak var result_2: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
 
    @IBOutlet weak var result: UILabel!
    var number = 0//判断加减乘除
    
    var judge = 0//决定输出数字的位数
    
    var add = 0
    
    var re = 0//判断result.text前是否存在符号
    @IBAction func one(_ sender: Any) {
        if re == 1{
            
            result.text = "1"
            
        }else{
            
            result.text = result.text! + "1"
            
        }
    }
    @IBAction func two(_ sender: Any) {
        if re == 1{
            
            result.text = "2"
            
        }else{
            
            result.text = result.text! + "2"
            
        }
    }
    @IBAction func three(_ sender: Any) {
        if re == 1{
            
            result.text = "3"
            
        }else{
            
            result.text = result.text! + "3"
            
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if re == 1{
            
            result.text = "4"
            
        }else{
            
            result.text = result.text! + "4"
            
        }
        

    }
    
    @IBAction func five(_ sender: Any) {
        if re == 1{
            
            result.text = "5"
            
        }else{
            
            result.text = result.text! + "5"
            
        }
    }
    
    @IBAction func six(_ sender: Any) {
        if re == 1{
            
            result.text = "6"
            
        }else{
            
            result.text = result.text! + "6"
            
        }
        

    }
    @IBAction func seven(_ sender: Any) {
        if re == 1{
            
            result.text = "7"
            
        }else{
            
            result.text = result.text! + "7"
            
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if re == 1{
            
            result.text = "8"
            
        }else{
            
            result.text = result.text! + "8"
            
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        if re == 1{
            
            result.text = "9"
            
        }else{
            
            result.text = result.text! + "9"
            
        }
    }
    @IBAction func zero(_ sender: Any) {
        if re == 1{
            
            result.text = "0"
            
        }else{
            
            result.text = result.text! + "0"
            
        }
        

    }
    
    @IBAction func plus(_ sender: Any) {
        
        if add == 1{
            
            let a = Double(result.text!)!
            
            let b = Double(result.text!)!
            
            let c = a + b
            
            result.text = String(c)
            
            result.text = ""
            
            number = 2
            
            re = 1
            
        }else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result.text = String(x)
                
                result.text = ""
                
                number = 2
                
                re = 0
                
            }
            
        }
        
    }
    

    @IBAction func minus(_ sender: Any) {
        
        if add == 1{
            
            let a = Double(result.text!)!
            
            let b = Double(result.text!)!
            
            let c = a - b
            
            result.text = String(c)
            
            result.text = ""
            
            number = 1
            
            re = 1
            
        }else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result.text = String(x)
                
                result.text = ""
                
                number = 1
                
                re = 0
                
            }
            
        }
        
    }
    
   
    @IBAction func multiply(_ sender: Any) {
        
        if add == 1{
            
            let a = Double(result.text!)!
            
            let b = Double(result.text!)!
            
            let c = a * b
            
            result.text = String(c)
            
            result.text = ""
            
            number = 3
            
            re = 1
            
        }else{
            
            if result.text == ""{
                
                result.text = "0"
                
            }else {
                
                let x = Double(result.text!)!
                
                result.text = String(x)
                
                result.text = ""
                
                number = 3
                
                re = 0
                
                add = 1
                
            }
            
        }
        
    }
   

    @IBAction func divide(_ sender: Any) {
        
        if add == 1{
            
            let a = Double(result.text!)!

            let b = Double(result.text!)!

            let c = a / b

            result.text = String(c)

            result.text = ""

            number = 4

            re = 1

        }else{

            if result.text == ""{
    
    result.text = "0"
    
}else {
    
                let y = Double(result.text!)!
                
                result.text = String(y)
                
                result.text = ""
                
                number = 4
                
                re = 0
                
                add = 1
                
            }
            
        }
        
    }
    
    
    @IBAction func equal(_ sender: Any) {
        var d:Double
        
        var c:Double
        
        let x = Double(result.text!)!
        c = (result.text! as NSString).doubleValue
        
        if number == 1 {
            
            d = x - c
            
        }else if number == 2 {
            
            d = x + c
            
        }else if number == 3 {
            
            d = x * c
            
        }else if number == 4 {
            
            d = x / (c)
            
        }else {
            
            d = 1000
            
        }
        
        result.text = String(c)
        
        if judge == 1{
            
            result.text = String(format:"%f", d)
            
        }else {
            
            result.text = String(format:"%.0f", d)
            
        }
        
        re = 1
        
        judge = 0
        
        add = 0
        
    }
    
   
    
 
}




