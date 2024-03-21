import 'package:aakoo_app/views/dashboard/dashboard.page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF302C44),
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   'assets/logo.png', // Add your logo image path here
              //   width: 150,
              //   height: 150,
              // ),\
              Text('Welcome to Aakoo!', style: TextStyle(fontSize: 30)),
              Text('Please sign-in to your account and start the adventure',
                  style: TextStyle(fontSize: 10)),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded border
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded border
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded border
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded border
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(
                        15.0), // Increase padding to make button larger
                    child: Text('Login'),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF302C44),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded button
                    ),
                    minimumSize:
                        Size(double.infinity, 50), // Larger button size
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New on our platform?'),
                  Text('Create an account'),
                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(55, 10, 55, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white, // Adjust the color as needed
                            thickness: 2.0, // Adjust the thickness as needed
                            height: 20.0, // Adjust the height as needed
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('or'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white, // Adjust the color as needed
                            thickness: 2.0, // Adjust the thickness as needed
                            height: 20.0, // Adjust the height as needed
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            20), // Adding space between the dividers and logos
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://freelogopng.com/images/all_img/1657548367Facebook-logo.png', // Provide the path to your Facebook logo asset
                          height: 40, // Adjust the height as needed
                        ),
                        Image.network(
                          'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png', // Provide the path to your Facebook logo asset
                          height: 35, // Adjust the height as needed
                        ),
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/512/25/25231.png', // Provide the path to your Facebook logo asset
                          height: 35, // Adjust the height as needed
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
