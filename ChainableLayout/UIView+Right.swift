//
//  UIView+Right.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .right
public extension UIView {
	/// Установить ограничение .right к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func right(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.rightAnchor.constraint(equalTo: rightAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .right "меньше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func rightLessThanOrEqual(_ offset: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.rightAnchor.constraint(
				lessThanOrEqualTo: rightAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .right "больше либо равно" к супервью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func rightGreaterThanOrEqual(_ offset: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.rightAnchor.constraint(
				greaterThanOrEqualTo: rightAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .right к .left другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func right(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(view.leftAnchor.constraint(
			equalTo: rightAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .right "меньше либо равно" к .left другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func rightLessThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			rightAnchor.constraint(lessThanOrEqualTo: view.leftAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .right "больше либо равно" к .left другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func rightGreaterThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			rightAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .right как у .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func right(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			rightAnchor.constraint(equalTo: view.rightAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .right "меньше либо равно" как у .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func rightLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .right "больше либо равно" как у .right другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func rightGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			rightAnchor.constraint(greaterThanOrEqualTo: view.rightAnchor, constant: offset, priority: priority)
		)
        return self
    }
}
