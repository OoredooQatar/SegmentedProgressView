//
//  ViewController.swift
//  SegmentedProgressView
//
//  Created by isapozhnik on 05/12/2017.
//  Copyright (c) 2017 isapozhnik. All rights reserved.
//

import UIKit
import SegmentedProgressView

class ViewController: UIViewController, ProgressBarDelegate {

    var items: [ProgressItem] = []
     let numberOfSegments = 5
    
   // @IBOutlet weak var xibProgressView: SegmentedProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        func getTheMinum(index:Int)->Float{
            let percent:Float = Float(index-1)/Float(numberOfSegments)
            let min = Float(percent * 100.0)
            return min
        }
        func getTheMax(index:Int)->Float{
            let percent:Float = Float(index)/Float(numberOfSegments)
            let max = Float(percent * 100.0)
            return max
        }

        for i in 0...numberOfSegments {
            let min = getTheMinum(index: i)
            let max = getTheMax(index: i)
            items.append(ProgressItem(withDuration: 1, minmum: min, maximum: max))

        }
        

        
        let progressView = SegmentedProgressView(withItems: items)
        progressView.progressTintColor = UIColor(red: 66.0/255.0, green: 134.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        progressView.trackTintColor = UIColor(red: 133/255.0, green: 169/255.0, blue: 229/255.0, alpha: 1.0)

        progressView.delegate = self
        progressView.backgroundColor = .white
        progressView.itemSpace = 3.0
        progressView.frame = CGRect(x: 20, y: 60, width: view.bounds.width - 40, height: 10)
        view.addSubview(progressView)
        progressView.percent = 0.95
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func progressBar(willDisplayItemAtIndex index: Int) {
        print("willDisplayItemAtIndex \(index)")
    }
    
    func progressBar(didDisplayItemAtIndex index: Int) {
        print("didDisplayItemAtIndex \(index)")
    }

}

