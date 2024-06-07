import 'dart:convert';
import 'package:clean_architecture_assignment_4/data/doctor_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorsList extends StatelessWidget {
  late final Image image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var item = data.data as List<DoctorDataModel>;

            return GridView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                var doctorsName = item[index].doctorName.toString();
                var doctorImage = item[index].doctorName.toString();
                var doctorSecification = item[index].specialization.toString();
                var doctorsAppointment = item[index].appointmentIcon.toString();
                var doctorsPrice = item[index].price.toString();
                return Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(220, 237, 251, 1),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 100,
                            child: Image(
                                image: NetworkImage(
                                    item[index].doctorImage.toString()))),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doctorsName,
                                style: const TextStyle(fontSize: 25),
                              ),
                              Text(doctorSecification,
                                  style: const TextStyle(fontSize: 15)),
                              Container(
                                height: 25,
                                child: Row(
                                  children: [
                                    RatingBar(
                                      minRating: 5,
                                      maxRating: 5,
                                      initialRating: 3,
                                      ratingWidget: RatingWidget(
                                        full: const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        half: const Icon(Icons.star_half),
                                        empty: const Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onRatingUpdate: (double value) {},
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      doctorsPrice,
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<List<DoctorDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('json/doctors_list.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => DoctorDataModel.fromJson(e)).toList();
  }
}
