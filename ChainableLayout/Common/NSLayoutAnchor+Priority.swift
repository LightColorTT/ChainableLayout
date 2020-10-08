//
//  NSLayoutAnchor+Priority.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Расширение NSLayoutAnchor для возможности установки приоритетов
extension NSLayoutAnchor {
	@objc
	func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
		let const = constraint(equalTo: anchor)
		const.priority = priority
		return const
	}

	@objc
	func constraint(
		greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>,
		priority: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(greaterThanOrEqualTo: anchor)
		const.priority = priority
		return const
	}

	@objc
	func constraint(
		lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>,
		priority: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(lessThanOrEqualTo: anchor)
		const.priority = priority
		return const
	}

	@objc
	func constraint(
		equalTo anchor: NSLayoutAnchor<AnchorType>,
		constant c: CGFloat, priority: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(equalTo: anchor, constant: c)
		const.priority = priority
		return const
	}

	@objc
	func constraint(
		greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>,
		constant c: CGFloat,
		priority: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(greaterThanOrEqualTo: anchor, constant: c)
		const.priority = priority
		return const
	}

	@objc
	func constraint(
		lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>,
		constant c: CGFloat,
		priority: UILayoutPriority
	) -> NSLayoutConstraint {
		let const = constraint(lessThanOrEqualTo: anchor, constant: c)
		const.priority = priority
		return const
	}
}
