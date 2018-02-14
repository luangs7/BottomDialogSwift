//
//  ViewController.swift
//  BottomDialogSwift
//
//  Created by Luan Silva on 14/02/18.
//  Copyright © 2018 Squarebits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        view.addSubview(button)
        button.frame.size = CGSize(width: 240, height: 50)
        button.center = view.center
        button.setTitle("Abrir BottomSheet Dialog", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(ViewController.gotoVCB(_:)), for: .touchUpInside)
    }
    
    func gotoVCB(_ sender: UIButton) {
        let vc = BottomViewController()
        vc.modalPresentationStyle = .custom
        present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

