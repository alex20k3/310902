// Product.swift
import Foundation

public class Product {
    private let name: String
    private let storeName: String
    private let price: Double

    // Инициализация товара
    public init(name: String, storeName: String, price: Double) {
        self.name = name
        self.storeName = storeName
        self.price = price
    }

    // Геттеры для доступа к данным товара
    public func getName() -> String {
        return name
    }

    public func getStoreName() -> String {
        return storeName
    }

    public func getPrice() -> Double {
        return price
    }

    // Описание товара
    public func description() -> String {
        return "Товар: \(name), Магазин: \(storeName), Цена: \(price) руб."
    }
}

// Дополнительная функция для сложения цен товаров
public func +(lhs: Product, rhs: Product) -> Double {
    return lhs.getPrice() + rhs.getPrice()
}
