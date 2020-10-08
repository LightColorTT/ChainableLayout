//
//  UIView+Width.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .width
public extension UIView {
	/// Установить ограничение .width по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func width(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(widthAnchor.constraint(equalToConstant: value, priority: priority))
		return self
	}

	/// Установить ограничение .width "меньше либо равно" по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func widthLessThanOrEqual(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
        constraintsBag.append(widthAnchor.constraint(lessThanOrEqualToConstant: value, priority: priority))
        return self
    }

	/// Установить ограничение .width "больше либо равно" по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func widthGreaterThanOrEqual(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(widthAnchor.constraint(greaterThanOrEqualToConstant: value, priority: priority))
        return self
    }

	/// Установить ограничение .width как у .width другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func width(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(widthAnchor.constraint(equalTo: view.widthAnchor, constant: offset, priority: priority))
		return self
	}

	/// Установить ограничение .width "меньше либо равно" как у .width другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func widthLessThanOrEqual(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, priority: priority))
        return self
    }

	/// Установить ограничение .width "больше либо равно" как у .width другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func widthGreaterThanOrEqual(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(widthAnchor.constraint(greaterThanOrEqualTo: view.widthAnchor, priority: priority))
        return self
    }
}
