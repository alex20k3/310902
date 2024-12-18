// main.swift
import Foundation
import WarehouseModule
import ProductModule

// Создание товаров
let product1 = Product(name: "Товар 1", storeName: "Магазин A", price: 150.0)
let product2 = Product(name: "Товар 2", storeName: "Магазин B", price: 200.0)
let product3 = Product(name: "Товар 3", storeName: "Магазин A", price: 120.0)
let product4 = Product(name: "Товар 4", storeName: "Магазин C", price: 250.0)

// Создание склада
let warehouse = Warehouse()

// Добавление товаров на склад
warehouse.addProduct(product1)
warehouse.addProduct(product2)
warehouse.addProduct(product3)
warehouse.addProduct(product4)

// Вывод всех товаров
print("Все товары на складе:")
for product in warehouse.getAllProducts() {
    print(product.description())
}

// Поиск товара по имени
print("\nПоиск товара по имени 'Товар 3':")
if let foundProduct = warehouse.getProductByName("Товар 3") {
    print(foundProduct.description())
} else {
    print("Товар не найден.")
}

// Сортировка товаров по названию магазина
print("\nСортировка по названию магазина:")
warehouse.sortByStoreName()
for product in warehouse.getAllProducts() {
    print(product.description())
}

// Сортировка товаров по названию
print("\nСортировка по названию товара:")
warehouse.sortByName()
for product in warehouse.getAllProducts() {
    print(product.description())
}

// Сортировка товаров по цене
print("\nСортировка по цене:")
warehouse.sortByPrice()
for product in warehouse.getAllProducts() {
    print(product.description())
}

// Сложение цен двух товаров
let totalPrice = product1 + product2
print("\nОбщая стоимость Товара 1 и Товара 2: \(totalPrice) руб.")
