import 'enums.dart';

class Order {
  final int orderID;
  final OrderType? orderType;
  final double? cylinderWeight;
  final int? quantity;
  final String? price;

  Order({
    required this.orderID,
    this.orderType,
    this.cylinderWeight,
    this.quantity,
    this.price,
  });
}

List<Order> orders = [
  Order(
    orderID: 1,
    orderType: OrderType.swapCylinder,
    cylinderWeight: 3.2,
    quantity: 1,
    price: '1,200',
  ),
  Order(
    orderID: 2,
    orderType: OrderType.newCylinder,
    cylinderWeight: 6.5,
    quantity: 4,
    price: '6,200',
  ),
];
