//
//  UIView+CenterY.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .centerY
public extension UIView {
	/// Установить ограничение .centerY к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerY(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerYAnchor.constraint(equalTo: currentSuperview.centerYAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .centerY "меньше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func centerYLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerYAnchor.constraint(lessThanOrEqualTo: currentSuperview.centerYAnchor, constant: offset)
		)
        return self
    }

	/// Установить ограничение .centerY "меньше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func centerYGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerYAnchor.constraint(
				greaterThanOrEqualTo: currentSuperview.centerYAnchor, constant: offset, priority: priority
			)
		)
        return self
    }

	/// Установить ограничение .centerY к .centerY другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerY(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .centerY "меньше либо равно" к .centerY другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func centerYLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerYAnchor.constraint(lessThanOrEqualTo: view.centerYAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .centerY "больше либо равно" к .centerY другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func centerYGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerYAnchor.constraint(greaterThanOrEqualTo: view.centerYAnchor, constant: offset, priority: priority)
		)
        return self
    }
}

