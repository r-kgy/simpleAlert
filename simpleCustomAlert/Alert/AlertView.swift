//
//  AlertView.swift
//  simpleCustomAlert
//
//  Created by 加賀谷諒 on 2017/08/17.
//  Copyright © 2017年 ryo kagaya. All rights reserved.
//

import Foundation
import UIKit

class AlertView: Alert {
    
    // SingleAlert ContentView
    func setUpSingleAlert(title: String, message: String, buttonTitle: String) -> UIView {
        let content: UIView = {
            let contentView = UIView()
            contentView.frame = CGRect(x: 0,
                                       y: 0,
                                       width: AppSize.screenWidth / 1.2,
                                       height: AppSize.screenHeight / 2)
            
            contentView.center = CGPoint(x: AppSize.screenWidth / 2,
                                         y: AppSize.screenHeight / 2)
            
            contentView.backgroundColor = .white
            
            let titleLabel = UILabel()
            titleLabel.frame = CGRect(x: 0,
                                      y: 0,
                                      width: AppSize.screenWidth,
                                      height: AppSize.screenHeight / 2)
            
            titleLabel.center = CGPoint(x: contentView.bounds.width / 2,
                                        y: contentView.bounds.height / 2)
            
            titleLabel.text = title
            titleLabel.textColor = .black
            titleLabel.textAlignment = .center
            
            contentView.addSubview(titleLabel)
            
            let messageLabel = UILabel()
            messageLabel.frame = CGRect(x: 0,
                                        y: 0,
                                        width: AppSize.screenWidth,
                                        height: AppSize.screenHeight / 2)
            
            messageLabel.center = CGPoint(x: contentView.bounds.width / 2,
                                          y: contentView.bounds.height / 1.5)
            
            messageLabel.text = message
            messageLabel.textColor = .gray
            messageLabel.textAlignment = .center
            
            contentView.addSubview(messageLabel)
            
            let singleViewAcceptButton = UIButton()
            singleViewAcceptButton.frame = CGRect(x: 0,
                                                  y: 0,
                                                  width: contentView.bounds.width / 1.2 ,
                                                  height: 50)
            
            singleViewAcceptButton.center = CGPoint(x: contentView.bounds.width / 2,
                                                    y: contentView.bounds.maxY - singleViewAcceptButton.frame.height / 1.5)
            
            singleViewAcceptButton.backgroundColor = UIColor.hexStr(hexStr: "#72acff", alpha: 1)
            
            singleViewAcceptButton.setTitleColor(.black, for: .normal)
            singleViewAcceptButton.setTitle(buttonTitle, for: .normal)
            singleViewAcceptButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
            singleViewAcceptButton.addTarget(self, action: #selector(acceptButtonTapped), for: .touchUpInside)
            
            singleViewAcceptButton.layer.masksToBounds = true
            singleViewAcceptButton.layer.cornerRadius = 20.0
            
            contentView.addSubview(singleViewAcceptButton)
            
            let alertImage = UIImageView()
            alertImage.frame = CGRect(x: 0,
                                      y: 0,
                                      width: 100,
                                      height: 100)
            
            alertImage.center = CGPoint(x: contentView.bounds.width / 2,
                                        y: contentView.bounds.height / 4.0)
            
            let image = UIImage(named: "insert_comment.png")!
            alertImage.image = image
            
            contentView.addSubview(alertImage)
            
            return contentView
        }()
        return content
    }
    
    
    // DoubleAlert ContentView
    func setUpDoubleAlert(title: String, message: String, accept: String, cancel: String) -> UIView {
        
        let content: UIView = {
            
            let contentView = UIView()
            contentView.frame = CGRect(x: 0,
                                       y: 0,
                                       width: AppSize.screenWidth / 1.2,
                                       height: AppSize.screenHeight / 2)
            
            contentView.center = CGPoint(x: AppSize.screenWidth / 2,
                                         y: AppSize.screenHeight / 2)
            
            contentView.backgroundColor = .white
            
            let doubleButtonView = UIView()
            doubleButtonView.frame = CGRect(x: 0,
                                            y: 0,
                                            width: contentView.bounds.width,
                                            height: 50)
            
            doubleButtonView.center = CGPoint(x: contentView.bounds.width / 2,
                                              y: contentView.bounds.maxY - 30)
            
            
            let doubleViewAcceptButton = UIButton()
            doubleViewAcceptButton.frame = CGRect(x: 0,
                                                  y: 0,
                                                  width: doubleButtonView.bounds.width / 2 - 15,
                                                  height: 50)
            
            doubleViewAcceptButton.center = CGPoint(x: doubleButtonView.bounds.midX + (doubleButtonView.bounds.width / 4) - 2,
                                                    y: doubleButtonView.bounds.midY)
            
            doubleViewAcceptButton.backgroundColor = UIColor.hexStr(hexStr: "#72acff", alpha: 1)
            doubleViewAcceptButton.setTitleColor(.black, for: .normal)
            doubleViewAcceptButton.setTitle(title, for: .normal)
            doubleViewAcceptButton.setTitle(accept, for: .normal)
            
            doubleViewAcceptButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
            
            doubleViewAcceptButton.layer.masksToBounds = true
            doubleViewAcceptButton.layer.cornerRadius = 5.0
            
            
            
            
            let doubleViewCancelButton = UIButton()
            doubleViewCancelButton.frame = CGRect(x: 0,
                                                  y: 0,
                                                  width: doubleButtonView.bounds.width / 2 - 15,
                                                  height: 50)
            
            doubleViewCancelButton.center = CGPoint(x:  doubleButtonView.bounds.midX - (doubleButtonView.bounds.width / 4) + 2,
                                                    y: doubleButtonView.bounds.midY)
            
            doubleViewCancelButton.backgroundColor = .black
            doubleViewCancelButton.setTitleColor(.white, for: .normal)
            doubleViewCancelButton.setTitle(title, for: .normal)
            
            doubleViewCancelButton.setTitle(cancel, for: .normal)
            
            doubleViewCancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
            
            doubleViewCancelButton.layer.masksToBounds = true
            doubleViewCancelButton.layer.cornerRadius = 5.0
            
            
            doubleViewAcceptButton.addTarget(self, action: #selector(acceptButtonTapped), for: .touchUpInside)
            doubleViewCancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
            
            doubleButtonView.addSubview(doubleViewAcceptButton)
            doubleButtonView.addSubview(doubleViewCancelButton)
            contentView.addSubview(doubleButtonView)
            
            let titleLabel = UILabel()
            titleLabel.frame = CGRect(x: 0,
                                      y: 0,
                                      width: AppSize.screenWidth,
                                      height: AppSize.screenHeight / 2)
            
            titleLabel.center = CGPoint(x: contentView.bounds.width / 2,
                                        y: contentView.bounds.height / 2)
            
            titleLabel.text = title
            titleLabel.textColor = .black
            titleLabel.textAlignment = .center
            
            contentView.addSubview(titleLabel)
            
            let messageLabel = UILabel()
            messageLabel.frame = CGRect(x: 0,
                                        y: 0,
                                        width: AppSize.screenWidth,
                                        height: AppSize.screenHeight / 2)
            
            messageLabel.center = CGPoint(x: contentView.bounds.width / 2,
                                          y: contentView.bounds.height / 1.5)
            
            messageLabel.text = message
            messageLabel.textColor = .gray
            messageLabel.textAlignment = .center
            
            contentView.addSubview(messageLabel)
            
            let alertImage = UIImageView()
            alertImage.frame = CGRect(x: 0,
                                      y: 0,
                                      width: 100,
                                      height: 100)
            
            alertImage.center = CGPoint(x: contentView.bounds.width / 2,
                                        y: contentView.bounds.height / 4.0)
            
            let image = UIImage(named: "insert_comment.png")!
            alertImage.image = image
            
            contentView.addSubview(alertImage)
            return contentView
        }()
        return content
    }
 
    
    
    
}