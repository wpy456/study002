//
//  ViewController.swift
//  study002 002
//
//  Created by PeiYu Wang on 2019/7/7.
//  Copyright © 2019 PeiYu Wang. All rights reserved.
//
//使用故事板创建导航控制器
import UIKit
var conIndex=1
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.barTintColor=UIColor.purple//导航栏颜色
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "wode_beijing3"), for: .default)//导航栏背景图
        self.view.backgroundColor=UIColor.white
        self.title="第\(conIndex)视图控制器"//导航栏标题
        conIndex+=1
        let btn=UIButton(type: .system)
        btn.frame=CGRect(x: 20, y: 100, width: 280, height: 30)
        btn.setTitle("push", for: .normal)
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(btn)
        
        let btnItem1=UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(click))
        let btnItem2=UIBarButtonItem(customView: UIView())
        let btnItem3=UIBarButtonItem(image: UIImage(named: "wode_beijing3"), style: .plain, target: self, action: #selector(click))
        let btnItem4=UIBarButtonItem(title: "标题", style: .plain, target: self, action: #selector(click))
//        self.navigationItem.backBarButtonItem=btnItem1//带pop方法（返回）
//        self.navigationItem.leftBarButtonItem=btnItem1
        self.navigationItem.leftBarButtonItems=[btnItem1,btnItem2]
        self.navigationItem.rightBarButtonItems=[btnItem3,btnItem4]
        
        self.navigationController?.isToolbarHidden=false//显示工具栏
        self.navigationController?.toolbar.barTintColor=UIColor.red
        
        let btnItem5=UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(click))
        let btnItem6=UIBarButtonItem(title: "标题", style: .plain, target: self, action: #selector(click))
        self.toolbarItems=[btnItem5,btnItem6]
        
        self.navigationController?.hidesBarsWhenVerticallyCompact=true//横屏自动隐藏导航栏工具栏
        self.navigationController?.hidesBarsOnTap=true//单击隐藏
        self.navigationController?.hidesBarsWhenKeyboardAppears=true//键盘弹起隐藏
        self.navigationController?.hidesBarsOnSwipe=true//滑动屏幕隐藏
        

    }
    @objc func push() {
        let con=ViewController()
        con.title = "第\(conIndex)视图控制器"
        self.navigationController?.pushViewController(con, animated: true)
    }

    deinit {
        conIndex-=1
    }
    @objc func click(){
        print("<#T##items: Any...##Any#>")
    }
    
}

