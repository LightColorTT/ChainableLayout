//
//  UIView+Bottom.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .bottom
public extension UIView {
	/// Установить ограничение .bottom к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .bottom "меньше либо равно" к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.bottomAnchor.constraint(
				lessThanOrEqualTo: bottomAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .bottom "больше либо равно" к супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.bottomAnchor.constraint(
				greaterThanOrEqualTo: bottomAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .bottom к safeArea .bottom супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomSafe(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(
				equalTo: bottomAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .bottom "меньше либо равно" к safeArea .bottom супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomSafeLessThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(
				lessThanOrEqualTo: bottomAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .bottom "больше либо равно" к safeArea .bottom супервью c отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomSafeGreaterThanOrEqual(_ offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(
				greaterThanOrEqualTo: bottomAnchor, constant: offset, priority: priority
			)
		)
		return self
	}

	/// Установить ограничение .bottom к .top другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func bottomToTop(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset, priority: priority))
        return self
    }

	/// Установить ограничение .bottom "меньше либо равно" к .top другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func bottomToTopLessThanOrEqual(to view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			view.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .bottom "больше либо равно" к .top другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
    @discardableResult
    func bottomToTopGreaterThanOrEqual(
		to view: UIView,
		offset: CGFloat = 0.0,
		priority: UILayoutPriority = .required
	) -> Self {
		constraintsBag.append(
			view.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: offset, priority: priority)
		)
        return self
    }

	/// Установить ограничение .bottom как у .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottom(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset, priority: priority))
		return self
	}

	/// Установить ограничение .bottom "меньше либо равно" как у .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomLessThanOrEqual(like view: UIView, offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(
			view.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: offset, priority: priority)
		)
		return self
	}

	/// Установить ограничение .bottom "больше либо равно" как у .bottom другой вью с отступом
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func bottomGreaterThanOrEqual(
		like view: UIView,
		offset: CGFloat = 0.0,
		priority: UILayoutPriority = .required
	) -> Self {
		constraintsBag.append(
			view.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: offset, priority: priority)
		)
		return self
	}
}
