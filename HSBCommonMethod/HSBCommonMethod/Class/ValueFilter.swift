//
//  ValueFilter.swift
//  HSBang
//
//  Created by CM on 2018/5/31.
//  Copyright © 2018年 CM. All rights reserved.
//

import Foundation
import UIKit

open class ValueFilter {
    
    /// 检查设备是否能打电话
    public class func isAvailablePhoneCall() -> Bool {
        let deviceType = UIDevice.current.model;
        if(deviceType == "iPod touch" || deviceType == "iPad"
            || deviceType == "iPhone Simulator") {
            return false;
        } else {
            return true;
        }
    }
    
    /**
     检查邮箱是否合法
     
     - parameter emailString: 邮箱地址
     
     - returns:
     */
    public class func isAvailableEmail(_ emailString: String) -> Bool {
        let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
        let regExPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx);
        return regExPredicate.evaluate(with: emailString);
    }
    
    /**
     检查手机号码
     
     - parameter mobileNum: 手机号码
     
     - returns:
     */
    public class func isAvailableMobileNumber(_ mobileNum: String) -> Bool {
        let phoneRegEx = "\\b(1)[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]\\b";
        
        let regExPredicate = NSPredicate(format:"SELF MATCHES %@", phoneRegEx);
        return regExPredicate.evaluate(with: mobileNum);
    }
    
    
    /**
     检查身份证号
     
     - parameter IDNumber: 身份证号
     
     - returns:
     */
    public class func isAvailableIDNumber(_ IDNumber: String) -> Bool {
        let IDNumberRegEx = "^(\\d{14}|\\d{17})(\\d|[xX])$"
        
        let regExPredicate = NSPredicate(format:"SELF MATCHES %@", IDNumberRegEx);
        return regExPredicate.evaluate(with: IDNumber);
    }
    
    
}
