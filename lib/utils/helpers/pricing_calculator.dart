class PPricingCalculator{
  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
  /// --Calculate shipping cost
 static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
 }
  /// -- Calculate tax
 static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount= productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
 }

 static double getTaxRateForLocation(String location){
    // Lookup the shipping cost for the given location from a tax rate databse or API.
  return 0.18;
 }

 static getShippingCost(String location){
   // Lookup the shipping cost for the given location using a shipping rate API
 return 1000.00; // shipping standard rate in Benin
  }

  /// -- Sum all cart values and return total amount
//static double calculateCartTotal(CartModel cart){
//return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
//}
}