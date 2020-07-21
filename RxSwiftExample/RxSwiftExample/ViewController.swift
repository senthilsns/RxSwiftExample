//
//  ViewController.swift
//  RxSwiftExample
//
//  Created by Senthil Kumar2 on 21/07/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit
import RxSwift

@available(iOS 13.0, *)
class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()

    @IBOutlet var DisplayLbl: UILabel!
    
    @IBAction func NextAction(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "DetailsViewController") as DetailsViewController
        vc.slectedBtnWithTitle
        .subscribe(onNext: { [weak self] character in
                   self?.DisplayLbl.text = "Hello \(character)"
               }).disposed(by: disposeBag)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

