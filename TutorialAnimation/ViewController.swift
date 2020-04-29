//
//  ViewController.swift
//  TutorialAnimation
//
//  Created by 五十嵐伸雄 on 2020/04/27.
//  Copyright © 2020 五十嵐伸雄. All rights reserved.
//

import UIKit
import paper_onboarding

class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

    @IBOutlet weak var onboardingView: OnboardingView!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        onboardingView.dataSource = self
        onboardingView.delegate = self
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        let rocketImage = #imageLiteral(resourceName: "rocket")
        let brushImage = #imageLiteral(resourceName: "brush")
        let pageIcon = #imageLiteral(resourceName: "brush")
        let backgroundColorOne = UIColor(red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 18)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 10)!
        
        return [OnboardingItemInfo(informationImage: rocketImage, title: "A great rocket start", description: "Caramels", pageIcon: pageIcon, color: backgroundColorOne, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descriptionFont),
            OnboardingItemInfo(informationImage: brushImage, title: "A great rocket start", description: "Caramels", pageIcon: pageIcon, color: backgroundColorTwo, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descriptionFont),
            OnboardingItemInfo(informationImage: pageIcon, title: "A great rocket start", description: "Caramels", pageIcon: pageIcon, color: backgroundColorThree, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descriptionFont)
            ][index]
    }
    
    func onboardingConfigurationItem(_: OnboardingContentViewItem, index _: Int) {
        
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 1 {
            UIView.animate(withDuration: 0.2) {
                self.getStartedButton.alpha = 0
            }
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 2 {
            UIView.animate(withDuration: 0.4) {
                self.getStartedButton.alpha = 1
            }
        
        }
    }

}

