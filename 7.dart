abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 2 / 100;
  }
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return 0;
  }
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 5 / 100;
  }
}

double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}

void main() {
  double amount = 1000;
  print('qart: ${calculateTotal(CardPayment(), amount)}');
  print('kanxik: ${calculateTotal(CashPayment(), amount)}');
  print('kripto: ${calculateTotal(CryptoPayment(), amount)}');
}
