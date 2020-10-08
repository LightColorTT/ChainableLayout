//
//  NSLayoutDimension+Priority.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Расширение NSLayoutDimension для возможности установки приоритетов
extension NSLayoutDimension {
	func constraint(equalToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
		let const = constraint(equalToConstant: c)
		const.priority = priority
		return const
	}

	func constraint(greaterThanOrEqualToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
		let const = constraint(greaterThanOrEqualToConstant: c)
		const.priority = priority
		return const
	}

	func constraint(lessThanOrEqualToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
		let const = constraint(lessThanOrEqualToConstant: c)
		const.priority = priority
		return const
	}
}
