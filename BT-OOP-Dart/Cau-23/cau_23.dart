enum Gender { male, female, others }

void main() {
  print('MSSV: 6451071033');
  print('--- Test Case Đúng ---');
  print('Tất cả các giá trị của Enum Gender:');
  for (var gender in Gender.values) {
    print('- ${gender.name}');
  }

  print('\n--- Test Case Sai ---');
  try {
    String input = 'alien';
    // Cố gắng tìm giá trị enum tương ứng với chuỗi đầu vào sai lệch
    Gender parsedGender = Gender.values.firstWhere((e) => e.name == input);
    print('Giá trị tìm thấy: $parsedGender');
  } catch (e) {
    print(
      'Bắt lỗi thành công: Chuỗi đầu vào không khớp với bất kỳ giá trị nào trong Enum Gender.',
    );
    print('Chi tiết lỗi hệ thống: $e');
  }
}
