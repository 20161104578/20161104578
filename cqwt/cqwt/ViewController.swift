//
//  ViewController.swift
//  cqwt
//
//  Created by 20161104578 on 2018/12/21.
//  Copyright © 2018 20161104578. All rights reserved.
//
import UIKit



class ViewController: UIViewController {
    
                                                                                                                                                                                                                                                                                                                                                                                                                                
    
                        @IBOutlet var cityname: UILabel?
    
                    
    
                                        @IBOutlet var Temp: UILabel?
    
                  
    
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
            
                   
            
                    var data=NSData(contentsOfURL: url as! URL)
            
                   
            
                   
            
                    var json:AnyObject!=JSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.AllowFragments, error: nil)
            
                   
            
                    var weatherinfo:AnyObject=json.objectForKey("weatherinfo") as AnyObject
            
                   
            
                   
            
                    var city:NSObject=weatherinfo.objectForKey("city") as! NSObject
            
                   
            
                    var temp:NSObject=weatherinfo.objectForKey("temp") as! NSObject
            
                   
            
                   return(city,temp)
            
                   
        
                   }
    
           
    
}

