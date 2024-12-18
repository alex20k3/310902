// Warehouse.swift
import Foundation
import ProductModule // Подключаем модуль ProductModule

public class Warehouse {
    private var products: [Product]

    // Инициализация склада с пустым массивом товаров
    public init() {
        self.products = []
    }

    // Добавление товара на склад
    public func addProduct(_ product: Product) {
        products.append(product)
    }

    // Получение товара по индексу
    public func getProduct(at index: Int) -> Product? {
        guard index >= 0 && index < products.count else {
            return nil
        }
        return products[index]
    }

    // Поиск товара по названию
    public func getProductByName(_ name: String) -> Product? {
        return products.first { $0.getName().lowercased() == name.lowercased() }
    }

    // Сортировка товаров по магазину, названию и цене
    public func sortByStoreName() {
        products.sort { $0.getStoreName() < $1.getStoreName() }
    }

    public func sortByName() {
        products.sort { $0.getName() < $1.getName() }
    }

    public func sortByPrice() {
        products.sort { $0.getPrice() < $1.getPrice() }
    }

    // Получение всех товаров
    public func getAllProducts() -> [Product] {
        return products
    }
}
