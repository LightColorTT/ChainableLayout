//
//  UIView+Size.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений .size
public extension UIView {
	/// Установить ограничение .width и .height по значению
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - value: значение
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func size(_ value: CGFloat, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(contentsOf: [
			heightAnchor.constraint(equalToConstant: value, priority: priority),
			widthAnchor.constraint(equalToConstant: value, priority: priority)
		])
		return self
	}

	/// Установить ограничение .width и .height как у другой вью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
	func size(like view: UIView, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(contentsOf: [
			heightAnchor.constraint(equalTo: view.heightAnchor, priority: priority),
			widthAnchor.constraint(equalTo: view.widthAnchor, priority: priority)
		])
		return self
	}
}
