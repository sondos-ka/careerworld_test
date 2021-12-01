import 'dart:convert';




import 'package:http/http.dart' as http;



class CareerData{
  String videoUrl="";
  var description;
  List<dynamic> letters=[];
    CareerData(this.videoUrl,this.description,this.letters);
}



Future<CareerData> getData(url) async {
  final response = await http.get(Uri.parse(url));
  var data = json.decode(response.body);
  return CareerData(data["data"]["video_url"], data["data"]["description"], data["data"]["careers_letters"]);
}