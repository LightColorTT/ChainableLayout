//
//  UIView+LastBaseline.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .lastBaseline
public extension UIView {
	/// Установить ограничение .lastBaseline как у другой вью c отступом
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func lastBaseline(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			lastBaselineAnchor.constraint(equalTo: view.lastBaselineAnchor, constant: offset, priority: priority)
		)
        return self
	}

	/// Установить ограничение .lastBaseline "меньше или равно" как у другой вью c отступом
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func lastBaselineLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			lastBaselineAnchor.constraint(
				lessThanOrEqualTo: view.lastBaselineAnchor, constant: offset, priority: priority
			)
		)
        return self
	}

	/// Установить ограничение .lastBaseline "больше или равно" как у другой вью c отступом
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func lastBaselineGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			lastBaselineAnchor.constraint(
				greaterThanOrEqualTo: view.lastBaselineAnchor, constant: offset, priority: priority
			)
		)
        return self
	}
}
