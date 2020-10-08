//
//  UIView+Left.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .left
public extension UIView {
	/// Установить ограничение .left к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func left(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(equalTo: currentSuperview.leftAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .left "меньше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func leftLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(
				lessThanOrEqualTo: currentSuperview.leftAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .left "больше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func leftGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(
				greaterThanOrEqualTo: currentSuperview.leftAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .left к .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func left(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(equalTo: view.rightAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .left "меньше либо равно" к .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func leftLessThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(lessThanOrEqualTo: view.rightAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .left "больше либо равно" к .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func leftGreaterThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(greaterThanOrEqualTo: view.rightAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .left как у .left другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func left(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(equalTo: view.leftAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .left "меньше либо равно" как у .left другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func leftLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .left "больше либо равно" как у .left другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func leftGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			leftAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor, constant: offset, priority: priority)
		)
        return self
    }
}
