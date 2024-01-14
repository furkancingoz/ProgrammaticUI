//
//  PlayerDetailVC.swift
//  ProgrammaticUI
//
//  Created by Furkan Cingöz on 14.01.2024.
//

import UIKit
import SwiftUI

class PlayerDetailVC: UIViewController {

  private let backgroundImageView = UIImageView(image: UIImage(named: "backgro"))
  private let coverImageView = UIImageView(image:  UIImage(named: "ders"))
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
  private let cutButton: UIButton = {
    let cutButton = UIButton()
    cutButton.setImage(UIImage(systemName: "scissors"), for: .normal)
    return cutButton
  }()
  private let timmerButton: UIButton = {
    let timmerButton = UIButton()
    timmerButton.setImage(UIImage(systemName: "timer"), for: .normal)
    return timmerButton
  }()
  private let shareButton: UIButton = {
    let shareButton = UIButton()
    shareButton.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
    return shareButton
  }()
  private let sliderView: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    slider.minimumValue = 0
    slider.maximumValue = 1
    slider.value = 0.3
    slider.minimumTrackTintColor  = .darkGray
    return slider
  }()
  private let backButton: UIButton = {
    let backButton = UIButton()
    backButton.setImage(UIImage(systemName: "backward"), for: .normal)
    return backButton
  }()
  private let playButton: UIButton = {
    let playButton = UIButton()
    playButton.setImage(UIImage(systemName: "play"), for: .normal)
    return playButton
  }()
  private let forwardButton: UIButton = {
    let pauseButton = UIButton()
    pauseButton.setImage(UIImage(systemName: "forward"), for: .normal)
    return pauseButton
  }()
  private let toolsStackView2 : UIStackView = {
    let stckView = UIStackView()
    stckView.translatesAutoresizingMaskIntoConstraints = false
    stckView.distribution = .fillEqually
    return stckView
  }()


  override func viewDidLoad() {
    super.viewDidLoad()
    setLayout()
  }

  func setLayout() {
    coverImageView.translatesAutoresizingMaskIntoConstraints = false
    toolsStackView.translatesAutoresizingMaskIntoConstraints = false
    backgroundImageView.frame = view.frame
    view.addSubview(backgroundImageView)
    view.addSubview(coverImageView)
    view.addSubview(pagerView)
    view.addSubview(toolsStackView)
    view.addSubview(toolsStackView2)
    view.addSubview(sliderView)

    toolsStackView.addArrangedSubview(timmerButton)
    toolsStackView.addArrangedSubview(UIView())
    toolsStackView.addArrangedSubview(cutButton)
    toolsStackView.addArrangedSubview(UIView())
    toolsStackView.addArrangedSubview(shareButton)

    toolsStackView2.addArrangedSubview(backButton)
    toolsStackView2.addArrangedSubview(UIView())
    toolsStackView2.addArrangedSubview(playButton)
    toolsStackView2.addArrangedSubview(UIView())
    toolsStackView2.addArrangedSubview(forwardButton)

    NSLayoutConstraint.activate([
      coverImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:  30),
      coverImageView.leadingAnchor.constraint(equalTo: backgroundImageView.leadingAnchor, constant: 30),
      coverImageView.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor, constant: -30),

      coverImageView.heightAnchor.constraint(equalTo: coverImageView.widthAnchor, constant: -80),




      pagerView.topAnchor.constraint(equalTo: coverImageView.bottomAnchor, constant: 50),
      pagerView.leadingAnchor.constraint(equalTo: coverImageView.leadingAnchor),
      pagerView.trailingAnchor.constraint(equalTo: coverImageView.trailingAnchor),
      pagerView.heightAnchor.constraint(equalToConstant: 30),


      toolsStackView.topAnchor.constraint(equalTo: pagerView.bottomAnchor, constant:  50),
      toolsStackView.leadingAnchor.constraint(equalTo: coverImageView.leadingAnchor),
      toolsStackView.trailingAnchor.constraint(equalTo: coverImageView.trailingAnchor),
      toolsStackView.heightAnchor.constraint(equalToConstant: 40),

      sliderView.topAnchor.constraint(equalTo: toolsStackView.bottomAnchor,constant: 50),
      sliderView.leadingAnchor.constraint(equalTo: coverImageView.leadingAnchor),
      sliderView.trailingAnchor.constraint(equalTo: coverImageView.trailingAnchor),
      sliderView.heightAnchor.constraint(equalToConstant: 30),

      toolsStackView2.topAnchor.constraint(equalTo: sliderView.bottomAnchor, constant:  70),
      toolsStackView2.leadingAnchor.constraint(equalTo: coverImageView.leadingAnchor),
      toolsStackView2.trailingAnchor.constraint(equalTo: coverImageView.trailingAnchor),
      toolsStackView2.heightAnchor.constraint(equalToConstant: 60),





    ])


  }

}

#Preview {
  PlayerDetailViewRepresentable()
}
struct PlayerDetailViewRepresentable: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> PlayerDetailVC {
    // PlayerDetailVC'nin örneğini oluştur.
    return PlayerDetailVC()
  }

  func updateUIViewController(_ uiViewController: PlayerDetailVC, context: Context) {
    // Bu fonksiyon, view controller'ı güncellemek için kullanılır.
  }
}
