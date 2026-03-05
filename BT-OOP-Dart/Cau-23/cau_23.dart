enum Gender { male, female, others }

void main() {
  print('MSSV: 6451071033');
  print('--- Test Case Đúng ---');
  print('Tất cả các giá trị của Enum Gender:');
  for (var gender in Gender.values) {
    print('- ${gender.name}');
  }
}
