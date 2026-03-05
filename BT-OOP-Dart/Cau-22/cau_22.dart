class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price) {
    if (price < 0) {
      throw ArgumentError('Lỗi: Giá nhà (price) không được là số âm.');
    }
    if (name.trim().isEmpty) {
      throw ArgumentError('Lỗi: Tên nhà không được để trống.');
    }
  }

  @override
  String toString() {
    return 'House [ID: $id, Name: $name, Price: \$${price.toStringAsFixed(2)}]';
  }
}

void main() {
  print('MSSV: 6451071033');
  print('--- Test Case Đúng ---');
  try {
    List<House> houses = [
      House(1, 'Villa', 500.0),
      House(2, 'Townhouse', 150.0),
      House(3, 'Cottage', 85.0),
    ];

    print('Danh sách các ngôi nhà:');
    for (var house in houses) {
      print(house);
    }
  } catch (e) {
    print(e);
  }

  print('\n--- Test Case Sai ---');
  try {
    House houseError = House(4, 'Ghost house', -100.0);
    print(houseError);
  } catch (e) {
    print('Bắt lỗi thành công: $e');
  }
}
