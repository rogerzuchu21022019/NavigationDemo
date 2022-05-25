//
//  BlueVC.swift
//  NavigationDemo
//
//  Created by Vu Thanh Nam on 10/05/2022.
//

import UIKit

class BlueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        print("View 2 :Did LOAD")
        self.title = "BlueScreen"
        self.view.backgroundColor = .blue
        createNavigationButton1()
        createButtonGotoYellowVC()
    }
    
    func createButtonGotoYellowVC(){
        let nextBtn = UIButton(frame: CGRect(x: 50, y: 500, width: 160, height: 80))
        view.addSubview(nextBtn)
        nextBtn.layer.cornerRadius = 25
        nextBtn.backgroundColor = .orange
        nextBtn.setTitle("Next to YellowVC", for: .normal)
        nextBtn.addTarget(self, action: #selector(gotoYellowVC), for: .touchUpInside)
    }
    
    @objc func gotoYellowVC(){
        //call storyboard
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        //create screen
        let yellowScreenVC = storyBoard.instantiateViewController(withIdentifier: "YellowVC")
        navigationController?.pushViewController(yellowScreenVC, animated: true)
    }
    
    func createNavigationButton1(){
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: nil)
    }
//    override func viewWillAppear(_ animated: Bool) {
//        print("View 2 :Will APPEAR")
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        print("View 2 :Did APPEAR")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        print("View 2 :Will DIDSAPPEAR")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        print("View 2 :DID DIDSAPPEAR")
//    }
//

}
