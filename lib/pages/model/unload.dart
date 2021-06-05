// enum Status {
//   Concluded,
//   Canceled,
//   Progress,
// }

// class Unload {
//   final String id;
//   final int number;
//   final String barCode;
//   final String operationId;
//   final String initialDate;
//   final String finalDate;
//   final Status status;
//   final String shipId;

//   const Unload({
//     this.id,
//     this.number,
//     this.barCode,
//     this.operationId,
//     this.initialDate,
//     this.finalDate,
//     this.shipId,
//     this.status,
//   });

//   int get showStatus {
//     if (status == Status.Concluded) {
//       return 1;
//     } else if (status == Status.Canceled) {
//       return 2;
//     } else if (status == Status.Progress) {
//       return 3;
//     }
//     return 0;
//   }
// }
