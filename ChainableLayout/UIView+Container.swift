//
//  UIView+Container.swift
//  ChainableLayout
//
//  Created by Filipp Krasnovid on 08.10.2020.
//  Copyright © 2020 LightColor. All rights reserved.
//

/// Добавление ограничений относительно контейнера
public extension UIView {

	/// Установить ограничение ко всем сторонам контейнера
	/// - Note: Не требует активации .active()
	///
	/// - Parameter offset: Равномерный отступ, по умолчанию 0
	func pinContainer(offset: CGFloat = 0.0) {
		NSLayoutConstraint.activate([
			leftAnchor.constraint(equalTo: currentSuperview.leftAnchor, constant: offset),
			currentSuperview.rightAnchor.constraint(equalTo: rightAnchor, constant: offset),
			topAnchor.constraint(equalTo: currentSuperview.topAnchor, constant: offset),
			currentSuperview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset)
        ])
	}

	/// Установить ограничение ко всем сторонам safeArea контейнера
	/// - Note: Не требует активации .active()
	///
	/// - Parameter offset: Равномерный отступ, по умолчанию 0
	func pinContainerSafe(offset: CGFloat = 0.0) {
		NSLayoutConstraint.activate([
			leftAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.leftAnchor, constant: offset),
			currentSuperview.safeAreaLayoutGuide.rightAnchor.constraint(equalTo: rightAnchor, constant: offset),
			topAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.topAnchor, constant: offset),
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset)
        ])
	}

	/// Установить ограничение вертикально к контейнеру
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - view: вью для ограничения
	///   - offset: равномерный отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	func pinVertically(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(contentsOf: [
			topAnchor.constraint(equalTo: currentSuperview.topAnchor, constant: offset, priority: priority),
			currentSuperview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset, priority: priority)
		])
		return self
	}

	/// Установить ограничение вертикально к safeArea контейнера
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: равномерный отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	func pinVerticallySafe(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(contentsOf: [
			topAnchor.constraint(equalTo: currentSuperview.safeAreaLayoutGuide.topAnchor, constant: offset, priority: priority),
			currentSuperview.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, constant: offset, priority: priority)
		])
		return self
	}

	/// Установить ограничение горизонтально к контейнеру
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - offset: равномерный отступ, по умолчанию 0
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	func pinHorizontally(offset: CGFloat = 0.0, priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(contentsOf: [
			leftAnchor.constraint(equalTo: currentSuperview.leftAnchor, constant: offset, priority: priority),
			currentSuperview.rightAnchor.constraint(equalTo: rightAnchor, constant: offset, priority: priority)
		])
		return self
	}

	/// Установить ограничение X и Y позиции относительно центра супервью
	///
	/// - Note: Требует активации .active()
	///
	/// - Parameters:
	///   - priority: приоритет ограничения, по умолчанию .required
	/// - Returns: Self
	@discardableResult
    func centerContainer(priority: UILayoutPriority = .required) -> Self {
		constraintsBag.append(contentsOf: [
			centerXAnchor.constraint(equalTo: currentSuperview.centerXAnchor, priority: priority),
			centerYAnchor.constraint(equalTo: currentSuperview.centerYAnchor, priority: priority)
		])
		return self
	}
}
