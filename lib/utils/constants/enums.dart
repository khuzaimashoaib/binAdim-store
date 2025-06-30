// Product size options
enum ProductSize { small, medium, large }

enum TextSizes { small, medium, large }

// Order status tracking
enum OrderStatus {
  processing, // Order is being prepared
  shipped, // Order has been dispatched
  delivered, // Order has reached customer
}

// Available payment methods
enum PaymentMethods {
  paypal,
  googlePay,
  applePay,
  visa,
  masterCard,
  creditCard, // Generic credit card option
  paystack,
  razorPay,
  paytm,
}
