import "datascreen.dart";

//const trainnumber=02554;
class Trainstatus {
  Trainstatus(this.trainnumber, this.date);
  var trainnumber;
  var date;

  Future<dynamic> getcurrentstatus() async {
    NetworkHelper networkHelper = NetworkHelper(
        "https://indianrailapi.com/api/v2/livetrainstatus/apikey/f58f700da4de2cba34c389ef1a06c32c/trainnumber/$this.trainnumber/date/$this.date/");
    var traindata = await networkHelper.getData();

    return traindata;
  }
}
