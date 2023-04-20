import 'package:flutter/material.dart';
import 'package:tugas_meet_2/widgets/photo_profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}


class _DetailPageState extends State<DetailPage> {
  
  String? name;

  @override
  void initState() {
    name = 'Dwindi';
    super.initState();
  }

  String getName() {
    if(name == null){
      return 'Null';
    }else{
      return name!;
    }
  }

  List<Biodata> biodata = [
      Biodata(data: 'Registered', keterangan: '18 Aug 2021'),
      Biodata(data: 'Total Projects', keterangan: '8 Projects'),
      Biodata(data: 'Total Post', keterangan: '128 Posts'),
      Biodata(data: 'Deposits', keterangan: 'Rp 40.223'),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Information')
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 30.0),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const PhotoProfile(),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dwindi Ramadhana', 
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        )
                      ),
                      const Text('Yogyakarta, Freelancer'),
                      ElevatedButton.icon(
                        onPressed: (){
                          
                        }, 
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                        label: const Text('Follow me')
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width:double.infinity,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Data')),
                DataColumn(label: Text('Description'))
              ], 
              rows: biodata.map((element) => 
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text(element.data!)),
                    DataCell(Text(element.keterangan!)),
                  ],
                )
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Biodata {
  String? data;
  String? keterangan;

  Biodata({this.data, this.keterangan});
}