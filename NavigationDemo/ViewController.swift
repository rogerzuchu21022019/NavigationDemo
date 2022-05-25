//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Vu Thanh Nam on 10/05/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gotoBlueVC(_ sender: UIButton) {
        //init Storyboard
        let blueVC = UIStoryboard(name: "Main", bundle: nil)
        
        //create BlueVC
        let blueScreen = blueVC.instantiateViewController(withIdentifier: "Blue_VC") as! BlueVC
        
        //using navigationController.push
        self.navigationController?.pushViewController(blueScreen, animated: true)

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("View 1 :Did LOAD")
        title = "Home Screen"
        createButtonGotoNextScreen()
        createNavigationButton()
    }

    func createButtonGotoNextScreen(){
        let button = UIButton(frame: CGRect(x: 50 , y: 100, width: 200, height: 50))
        view.addSubview(button)
        button.layer.cornerRadius = 25
        button.backgroundColor = .systemBlue
        button.setTitle("Go To Next Screen", for: .normal)
        button.addTarget(self, action: #selector(gotoNextScreen), for: .touchUpInside)
    }
    
    @objc func gotoNextScreen(){
        //init Storyboard
        let blueStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //create BlueVC
        let blueScreen = blueStoryboard.instantiateViewController(withIdentifier: "Blue_VC") as! BlueVC
        
        //
        navigationController?.pushViewController(blueScreen, animated: true)
    }
    
    func createNavigationButton(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                           style: .done,
                                                           target: self,
                                                           action: nil)
        navigationItem.rightBarButtonItems = [
             UIBarButtonItem(barButtonSystemItem:.add,
                             target: self,
                             action: nil),
             UIBarButtonItem(image: UIImage(systemName: "person.circle"),
                             style: .done,
                             target: self,
                             action: nil)
             ]
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        print("View 1 :Will APPEAR")
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        print("View 1 :Did APPEAR")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        print("View 1 :Will DIDSAPPEAR")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        print("View 1 :DID DIDSAPPEAR")
//    }

}

