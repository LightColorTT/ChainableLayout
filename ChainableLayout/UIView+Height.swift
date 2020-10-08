//
//  UIView+Height.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .height
public extension UIView {
	/// Установить ограничение .height по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func height(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(heightAnchor.constraint(equalToConstant: value, priority: priority))
		return self
	}

	/// Установить ограничение .height "меньше либо равно" по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
    @discardableResult
    func heightLessThanOrEqual(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
        constraintsBag.append(heightAnchor.constraint(lessThanOrEqualToConstant: value, priority: priority))
        return self
    }

	/// Установить ограничение .height "больше либо равно" по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
    @discardableResult
    func heightGreaterThanOrEqual(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(heightAnchor.constraint(greaterThanOrEqualToConstant: value, priority: priority))
        return self
    }

	/// Установить ограничение .height как у .height другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
	@discardableResult
	func height(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(heightAnchor.constraint(equalTo: view.heightAnchor, priority: priority))
		return self
	}

	/// Установить ограничение .height "меньше либо равно" как у .height другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
    @discardableResult
    func heightLessThanOrEqual(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor, priority: priority))
        return self
    }

	/// Установить ограничение .height "больше либо равно" как у .height другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию required
	/// - Returns: Self
    @discardableResult
	func heightGreaterThanOrEqual(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor, priority: priority))
        return self
    }
}
