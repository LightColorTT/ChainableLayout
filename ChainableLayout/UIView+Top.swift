//
//  UIView+Top.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .top
public extension UIView {
	/// Установить ограничение .top к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func top(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(equalTo: currentSuperview.topAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .top "меньше либо равно" к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func topLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(lessThanOrEqualTo: currentSuperview.topAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .top "больше либо равно" к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func topGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(greaterThanOrEqualTo: currentSuperview.topAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .top к safeArea супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func topSafe(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(
				equalTo: currentSuperview.safeAreaLayoutGuide.topAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .top "меньше либо равно" к safeArea супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func topSafeLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(
				lessThanOrEqualTo: currentSuperview.safeAreaLayoutGuide.topAnchor, constant: offset, priority: priority
			)
		)
        return self
    }

	/// Установить ограничение .top "больше либо равно" к safeArea супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func topSafeGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(
				greaterThanOrEqualTo: currentSuperview.safeAreaLayoutGuide.topAnchor, constant: offset, priority: priority
			)
		)
        return self
    }

	/// Установить ограничение .top к .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func topToBottom(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(topAnchor.constraint(equalTo: view.bottomAnchor, constant: offset, priority: priority))
        return self
    }


	/// Установить ограничение .top "меньше либо равно" к .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func topToBottomLessThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: offset, priority: priority)
		)
		return self
    }

	/// Установить ограничение .top "больше либо равно" к .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func topToBottomGreaterThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .top к safeArea .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func topToBottomSafe(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: topAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .top "меньше либо равно" к safeArea .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func topToBottomSafeLessThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			view.safeAreaLayoutGuide.bottomAnchor.constraint(
				lessThanOrEqualTo: topAnchor, constant: offset, priority: priority
			)
		)
		return self
    }

	/// Установить ограничение .top "больше либо равно" к safeArea .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
	func topToBottomSafeGreaterThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			view.safeAreaLayoutGuide.bottomAnchor.constraint(
				greaterThanOrEqualTo: topAnchor, constant: offset, priority: priority
			)
		)
        return self
    }

	/// Установить ограничение .top как у .top другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func top(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(topAnchor.constraint(equalTo: view.topAnchor, constant: offset, priority: priority))
		return self
	}

	/// Установить ограничение .top "меньше либо равно" как у .top другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func topLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .top "больше либо равно" как у .top другой вью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func topGreaterThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: offset, priority: priority)
		)
		return self
	}
}
