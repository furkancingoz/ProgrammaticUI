//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Furkan Cingöz on 15.01.2024.
//

import Foundation
import UIKit
import SwiftUI

class ViewController: UIViewController {
  
  private let backgroundImageView = UIImageView(image: UIImage(named: "backgro"))
  private let coverImageView = UIImageView(image: UIImage(named: "ders"))
  
  private let pagerView: UIPageControl = {
    let pagerView = UIPageControl()
    pagerView.translatesAutoresizingMaskIntoConstraints = false
    pagerView.numberOfPages = 2
    return pagerView
  }()
  
  private let toolsStackView : UIStackView = {
    let stckView = UIStackView()
    stckView.distribution = .fillEqually
    return stckView
  }()
  
  private let sliderView: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    slider.minimumValue = 0
    slider.maximumValue = 1
    slider.value = 0.3
    slider.minimumTrackTintColor = .darkGray
    return slider
  }()
  
  private let toolsStackView2 : UIStackView = {
    let stckView = UIStackView()
    stckView.translatesAutoresizingMaskIntoConstraints = false
    stckView.distribution = .fillEqually
    return stckView
  }()
  
  var cutButton: UIButton!
  var timerButton: UIButton!
  var shareButton: UIButton!
  var backButton: UIButton!
  var playButton: UIButton!
  var forwardButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setUpButtons()
    addSubviews()
  }
  func addSubviews() {
    
    view.addSubview(timerButton)
    view.addSubview(cutButton)
    view.addSubview(shareButton)
    view.addSubview(backButton)
    view.addSubview(playButton)
    view.addSubview(forwardButton)
  }
  func setUpButtons() {
      let buttonImages = ["scissors", "timer", "square.and.arrow.up", "backward", "play", "forward"]
      let buttons = buttonImages.map { imageName in
          createButton(image: UIImage(systemName: imageName)!)
      }

      (cutButton, timerButton, shareButton, backButton, playButton, forwardButton) =
      (buttons[0], buttons[1], buttons[2], buttons[3], buttons[4], buttons[5])
  }
}
//      createButton(image: UIImage(systemName: buttonImages[buttonIndex])!)
//}

  func createButton(image: UIImage) -> UIButton {

    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setImage(image, for: .normal)
    return button
  }


#Preview {
  ViewControllerViewRepresentable()
}
struct ViewControllerViewRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> ViewController {
    // PlayerDetailVC'nin örneğini oluştur.
    return ViewController()
  }
  
  func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    // Bu fonksiyon, view controller'ı güncellemek için kullanılır.
  }
}
