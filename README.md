## Декларативный layout swift
Расширение для удобной и быстрой работы с ограничениями. Полностью поддерживается chainable синтаксис.
Все ограничения добавляются без обработки isActive флага, для активации в конце цепочки необходимо вызвать .active()

### Пример использования:

```swift
view.addSubviews(pinnableView)
pinnableView
    .top(20.0)
    .left(to: someView1, offset: 25.0, priority: .defaultLow)
    .height(like: someView2)
    .right(to: someView3, priority: .defaultHigh)
    .activate()
 
- Note ограничений:
1) .topAnchor pinnableView к .topAnchor superview с отступом 20
2) .leftAnchor pinnableView к .rightAnchor someView1 с отступом 25, с приоритетом .defaultLow
3) .heightAnchor pinnableView == .heightAnchor someView2
4) .rightAnchor pinnableView к .leftAnchor someView3 с приоритетом .defaultHigh
5) Активация всех ограничений обьявленных в цепочке
```
