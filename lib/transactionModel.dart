class Transaction {
  Transaction({
    required this.service,
    required this.station,
    required this.date,
    required this.time,
    required this.price,
    required this.status,
  });

  String service;
  String station;
  String date;
  String time;
  String price;
  String status;
}
