import 'package:flutter/material.dart';
import 'package:doctor_app/models/doctor.dart';

class DoctorDetails extends StatelessWidget {

  Doctor doctor;
  DoctorDetails(this.doctor);
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xff07da5f),
      ),
      appBar: appBar(),
      bottomNavigationBar: bottomNavBar(),
      body: ListView(
        children: [
          Row(
            children: [
              // Image.asset('assets/images/1.jpg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  // child: Image.asset('assets/images/1.jpg'),
                  backgroundImage: AssetImage(doctor.urlPhoto),
                  radius: 65,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        doctor.name,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    doctor.speciality,
                    style: TextStyle(
                        color: Color(0xff07da5f),
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                     children: [
                       Icon(
                         Icons.star,
                         color: Color(0xffffd500),
                       ),
                       Text(
                         '4.9',
                         style:       TextStyle(fontSize: 18, color: Color(0x770000000)),
                       )
                     ],
                  )

                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Container(
            width: size.width,
            height: size.height*.1,
            // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [ Text(
                      "Short Description",style: TextStyle(

                      color: Colors.black,
                      fontSize: 20,
                    ),
                    ),],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [ Text(
                      doctor.shortDescription,style: TextStyle(
                      fontSize: 15,
                      color: Color(0x770000000),
                    ),
                    )],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text("Location",style: TextStyle(
                        fontSize: 20,
                      ),),
                    ],
                  ),

                  SizedBox(
                    height: 5,
                  ),


                  Row(
                    children: [

                      Icon(Icons.add_location),
                      Text(
                        doctor.address,
                        style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                      )
                    ],
                  ),
                   Image.asset('assets/images/location.jpg'),
                  MaterialButton(
                    onPressed:(){},
                    child: Text("Request",style: TextStyle(
                      color: Colors.white,
                    ),),
                    color: Color(0xff07da5f),
                  )

                ],
              ),
            ),
          )



        ],

      ),

    );

  }
  Widget bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _selectedItem,
      onTap: (index) {
        /*setState(() {
          _selectedItem = index;
        });*/
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notification_important_sharp),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget appBar() {
    return AppBar(
      title: Text('Doctor Details'),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.workspaces_filled),
          onPressed: () {},
          color: Colors.white,
        )
      ],
    );
  }
}
