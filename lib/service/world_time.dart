import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class  WorldTime {
  late String location ;  // location name for the Ui
  late String time ;      //the time in that location
  late String flag ;        // url to an asset flag icon
  late String url ;        //location url for api endpoint
  late bool isDayTime; // true or false  if daytime or not



  WorldTime({
    required this.location,
    required this.flag,
    required this.url


});




  Future<void> getTime() async{
    //make the request
    Response response= await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    //print(data );

    //get properties from data
    String datetime= data['datetime'];
    String offset= data['utc_offset'].substring(1,3);
    // print (datetime);
    // print(offset);

    //create DteTime object
    DateTime now = DateTime.parse(datetime);
    now=now.add(Duration(hours:int.parse(offset) ));

    //sit the time property

    isDayTime= now.hour>6 && now.hour<20 ? true : false;
    time = DateFormat().add_jm().format(now);



  }


}


