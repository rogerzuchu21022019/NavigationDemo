//
//  YellowVC.swift
//  NavigationDemo
//
//  Created by Vu Thanh Nam on 10/05/2022.
//

import UIKit
class YellowVC : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("View 3: Did LOAD")
        initPropertiesScreen()
        initNavigationBarButton()
        initButtonBackToPrevious()
        initButtonBackToHome()
        initButtonBackToRoot()
    }
    
    func initButtonBackToHome(){
        let btnBackToHome = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        view.addSubview(btnBackToHome)
        btnBackToHome.center = view.center
        btnBackToHome.layer.cornerRadius = 25
        btnBackToHome.setTitle("Back to HomeVC", for: .normal)
        btnBackToHome.backgroundColor = .systemBlue
        btnBackToHome.addTarget(self, action: #selector(backToHomeVC), for: .touchUpInside)
    }
    
    
    
    func initButtonBackToPrevious(){
        let backToPrevious = UIButton(frame: CGRect(x: 120, y: 300, width: 200, height: 50))
        view.addSubview(backToPrevious)
        backToPrevious.layer.cornerRadius = 25
        backToPrevious.setTitle("Back to PreviousVC", for: .normal)
        backToPrevious.backgroundColor = .systemBlue
        backToPrevious.addTarget(self, action: #selector(backToPreviousVC), for: .touchUpInside)
    }
    
   
    func initButtonBackToRoot(){
        let btnBackToRoot = UIButton(frame: CGRect(x: 100  , y: 200, width: 150, height: 50))
        view.addSubview(btnBackToRoot)
        btnBackToRoot.layer.cornerRadius = 25
        btnBackToRoot.setTitle("Back to RootVC", for: .normal)
        btnBackToRoot.backgroundColor = .systemBlue
        btnBackToRoot.addTarget(self, action: #selector(backToRootVC), for: .touchUpInside)
    }
    
    @objc func backToPreviousVC(){
        self.navigationController?.popViewController(animated: true)
        
    }
    //come back main screen
    @objc func backToRootVC(){
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    //come to any ViewController crossed using Array viewController[]
    @objc func backToHomeVC(){
        let homeVC = self.navigationController?.viewControllers[0] as! ViewController
        self.navigationController?.popToViewController(homeVC, animated: true)
    }
    
    func initNavigationBarButton(){
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(title: "Sign Out",
                            style: .done,
                            target: self,
                            action: nil),
            UIBarButtonItem(image: UIImage(systemName: "stop"),
                            style: .done,
                            target: self,
                            action: nil)
        ]
    }
    
    func initPropertiesScreen(){
        self.title = "YellowVC"
        self.view.backgroundColor = .yellow
    }
//    override func viewWillAppear(_ animated: Bool) {
//        print("View 3: Will APPEAR")
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        print("View 3: DID APPEAR")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        print("View 3: Will DISAPPEAR")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        print("View 3: DID DIDSAPPEAR")
//    }
}
