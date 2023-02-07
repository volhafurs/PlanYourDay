//
//  ViewController.swift
//  PlanYorDay
//
//  Created by Volha Furs on 26.01.23.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarApearence()
        tabBar.backgroundColor = .clear
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateCV(
                viewController: HomeViewController(),
                title: "Home",
                image: UIImage(systemName: "house.fill")),
            generateCV(
                viewController: SettingsViewController(),
                title: "Setting",
                image: UIImage(systemName: "slider.horizontal.3")),
            generateCV(
                viewController: TutorialViewController(),
                title: "Tutorial",
                image: UIImage(systemName: "person.fill"))]
    }
    
    private func generateCV(viewController: UIViewController,title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarApearence() {
        let positionOnX: CGFloat = 10
        let width = tabBar.bounds.width - positionOnX * 2
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        tabBar.tintColor = .selectedTabBarItem
        tabBar.unselectedItemTintColor = .staticTabBarItem
    }
}

