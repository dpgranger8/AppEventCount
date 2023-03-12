//
//  ViewController.swift
//  AppEventCount
//
//  Created by David Granger on 3/10/23.
//





import UIKit

class ViewController: UIViewController{

    

    var willConnectCount = 0
    var didBecomeActive = 0
    var willResignActive = 0
    var willEnterForeground = 0
    var didEnterBackground = 0

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    
    
    @IBOutlet var Labels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        Labels[0].text = "The App has launched \(appDelegate.launchCount) time(s)"
        Labels[1].text = "The Configuration has connected \(appDelegate.configurationForConnectingCount) times(s)"
        Labels[2].text = "The scene will connect to the session ran \(willConnectCount) time(s)"
        Labels[3].text = "The scene did become active ran \(didBecomeActive) time(s)"
        Labels[4].text = "The scene will resign active ran \(willResignActive) time(s)"
        Labels[5].text = "The scene will enter foreground ran \(willEnterForeground) time(s)"
        Labels[6].text = "The scene did enter background \(didEnterBackground) time(s)"
    }

}

