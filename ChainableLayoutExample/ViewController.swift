//
//  ViewController.swift
//  ChainableLayoutExample
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

import ChainableLayout

class ViewController: UIViewController {

	private let view1 = UIView()
	private let view2 = UIView()
	private let view3 = UIView()
	private let view4 = UIView()
	private let view5 = UIView()
	private let view6 = UIView()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white

		view1.backgroundColor = .blue
		view2.backgroundColor = .black
		view3.backgroundColor = .green
		view4.backgroundColor = .yellow
		view5.backgroundColor = .red
		view6.backgroundColor = .brown

		view.addSubviews(view1, view2, view3, view4, view5, view6)

		view1
			.centerContainer()
			.size(55.0)
			.activate()

		view2
			.left(like: view1)
			.size(150.0)
			.topSafe(25.0)
			.activate()

		view3
			.left(like: view1)
			.right(like: view2)
			.height(75.0)
			.bottomSafe(15.0)
			.activate()

		view4
			.left(to: view1, offset: 15.0)
			.height(55.0)
			.right(5.0)
			.centerY(like: view1)
			.activate()

		view5
			.right(to: view1, offset: 15.0)
			.height(55.0)
			.left(5.0)
			.centerY(like: view1)
			.activate()

		view6.pinContainerSafe()
		view.sendSubviewToBack(view6)



		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			self.view3.heightConstraint?.constant = 300.0
			self.view4.heightConstraint?.constant = 300.0
			self.view5.heightConstraint?.constant = 300.0
			UIView.animate(withDuration: 2.0) {
				self.view.layoutIfNeeded()
			}
		}
	}
}
