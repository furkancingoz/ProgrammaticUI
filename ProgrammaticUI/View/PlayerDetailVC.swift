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

  override func viewDidLoad() {
    super.viewDidLoad()
    setLayout()
  }
  func setLayout() {
    coverImageView.translatesAutoresizingMaskIntoConstraints = false
    backgroundImageView.frame = view.frame
    view.addSubview(backgroundImageView)
    view.addSubview(coverImageView)
    view.addSubview(pagerView)

    NSLayoutConstraint.activate([
      coverImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:  30),
      coverImageView.leadingAnchor.constraint(equalTo: backgroundImageView.leadingAnchor, constant: 30),
      coverImageView.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor, constant: -30),
      coverImageView.heightAnchor.constraint(equalToConstant: coverImageView.frame.size.width - -80),
      pagerView.topAnchor.constraint(equalTo: coverImageView.bottomAnchor, constant: 20),
      pagerView.leadingAnchor.constraint(equalTo: coverImageView.leadingAnchor),
      pagerView.trailingAnchor.constraint(equalTo: coverImageView.trailingAnchor),
      pagerView.heightAnchor.constraint(equalToConstant: 30)

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
