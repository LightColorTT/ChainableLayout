//
//  UIView+FirstBaseline.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .firstBaseline
public extension UIView {
	/// Установить ограничение .firstBaseline как у другой вью
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func firstBaseline(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			firstBaselineAnchor.constraint(equalTo: view.firstBaselineAnchor, constant: offset, priority: priority)
		)
        return self
	}

	/// Установить ограничение .firstBaseline "меньше или равно" как у другой вью
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func firstBaselineLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			firstBaselineAnchor.constraint(
				lessThanOrEqualTo: view.firstBaselineAnchor, constant: offset, priority: priority
			)
		)
        return self
	}

	/// Установить ограничение .firstBaseline "больше или равно" как у другой вью
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func firstBaselineGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			firstBaselineAnchor.constraint(
				greaterThanOrEqualTo: view.firstBaselineAnchor, constant: offset, priority: priority
			)
		)
        return self
	}
}
