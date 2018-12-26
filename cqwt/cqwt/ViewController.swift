//
//  ViewController.swift
//  cqwt
//
//  Created by 20161104578 on 2018/12/21.
//  Copyright © 2018 20161104578. All rights reserved.
//
import UIKit



class ViewController: UIViewController {
    
                                                            
    
            @IBOutlet var cityname: UILabel
    
            
    
            @IBOutlet var Temp: UILabel
    
            
    
            override func viewDidLoad() {
        
                        super.viewDidLoad()
        
                      
        
                        var(city,temp)=json()
        
          
        
                        cityname.text=toString(city)+"市"
        
                        Temp.text=toString(temp)+"c"
        
                }
    
    
    
            override func didReceiveMemoryWarning() {
        
                        super.didReceiveMemoryWarning()
        
                        // Dispose of any resources that can be recreated.
        
                }
    
    
    
    
    
            
    
            
    
            
    
            func json()->(NSObject,NSObject)
        
            {
            
                    
            
                    var url=NSURL(string: "http://www.weather.com.cn/data/sk/101280601.html")
            
                    
            
                    var data=NSData(contentsOfURL: url)
            
                    
            
                    
            
                    var json:AnyObject!=NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.AllowFragments, error: nil)
            
                    
            
                    var weatherinfo:AnyObject=json.objectForKey("weatherinfo")
            
                    
            
                    
            
                    var city:NSObject=weatherinfo.objectForKey("city") as NSObject
            
                    
            
                    var temp:NSObject=weatherinfo.objectForKey("temp") as NSObject
            
                    
            
                    return(city,temp)
            
                    
            
                    }
    
            
    
}


---------------------
作者：lanzeng_in_sz
来源：CSDN
原文：https://blog.csdn.net/lanzeng_in_sz/article/details/38351193
版权声明：本文为博主原创文章，转载请附上博文链接！
