//
//  DetailsViewController.swift
//  RxSwiftExample
//
//  Created by Senthil Kumar2 on 21/07/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit
import RxSwift

class DetailsViewController: UIViewController {
    
    private let SelectedCharacterVariable = Variable("User")

    var slectedBtnWithTitle:Observable<String> {
        
        return SelectedCharacterVariable.asObservable()
    }
    
    
    @IBAction func forwardAction(_ sender: Any) {
        
        let name = (sender as AnyObject).title(for: .normal)
        SelectedCharacterVariable.value = name!
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Detail Page"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
