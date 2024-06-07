
class DoctorDataModel {
  String? doctorImage;
  String? doctorName;
  String? specialization;
  String? appointmentIcon;
  String? price;

  DoctorDataModel({
    this.doctorImage,
    this.doctorName,
    this.specialization,
    this.appointmentIcon,
    this.price
  });


  DoctorDataModel.fromJson(Map<String, dynamic> json){
    doctorImage= json['doctorImage'];
    doctorName= json['doctorName'];
    specialization= json['specialization'];
    appointmentIcon= json['appointmentIcon'];
    price= json['price'];
  
  
  }
}