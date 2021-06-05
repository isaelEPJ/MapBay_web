import 'package:mapbay/pages/model/operation.dart';
import 'package:mapbay/pages/model/ship.dart';

enum Status {
  Concluded,
  Canceled,
  Progress,
}

class Boarding {
  final String? id;
  final int? numberTrip;
  final String? operationId;
  final String? initialDate;
  final String? finalDate;
  final Status? status;
  final Ship? ship;
  final List<String>? route;
  final List<String>? barCodes;
  final List<String>? crew;
  final List<Operation>? operations;

  const Boarding({
    this.id,
    this.numberTrip,
    this.operationId,
    this.initialDate,
    this.finalDate,
    this.status,
    this.ship,
    this.route,
    this.barCodes,
    this.crew,
    this.operations,
  });

  int get showStatus {
    if (status == Status.Concluded) {
      return 1;
    } else if (status == Status.Canceled) {
      return 2;
    } else if (status == Status.Progress) {
      return 3;
    }
    return 0;
  }
}
