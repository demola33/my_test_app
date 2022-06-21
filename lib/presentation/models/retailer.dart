class Retailer {
  final String title;
  final String logoUrl;

  Retailer({
    required this.title,
    required this.logoUrl,
  });
}

List<Retailer> retailers = [
  Retailer(
    title: 'Oando petrol station',
    logoUrl: 'asset/images/oando.png',
  ),
  Retailer(
    title: 'Total Retail',
    logoUrl: 'asset/images/total.png',
  ),
  Retailer(
    title: 'Enyo Retail',
    logoUrl: 'asset/images/enyo.png',
  ),
  Retailer(
    title: 'AP Gas Station',
    logoUrl: 'asset/images/ap_gas.png',
  ),
];
