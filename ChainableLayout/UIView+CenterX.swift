//
//  UIView+CenterX.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .centerX
public extension UIView {
	/// Установить ограничение .centerX к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerX(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerXAnchor.constraint(equalTo: currentSuperview.centerXAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .centerX "меньше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func centerXLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerXAnchor.constraint(
				lessThanOrEqualTo: currentSuperview.centerXAnchor, constant: offset, priority: priority
			)
		)
        return self
    }

	/// Установить ограничение .centerX "меньше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func centerXGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerXAnchor.constraint(
				greaterThanOrEqualTo: currentSuperview.centerXAnchor, constant: offset, priority: priority
			)
		)
        return self
    }

	/// Установить ограничение .centerX к .centerX другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func centerX(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .centerX "меньше либо равно" к .centerX другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func centerXLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerXAnchor.constraint(lessThanOrEqualTo: view.centerXAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .centerX "больше либо равно" к .centerX другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func centerXGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			centerXAnchor.constraint(greaterThanOrEqualTo: view.centerXAnchor, constant: offset, priority: priority)
		)
        return self
    }
}
