import 'package:flutter/material.dart';
import 'package:interim_fyp/fullscreenimage.dart';
class profile extends StatefulWidget {
  static const String id='profile';

  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8BA3B3),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFD3D3D3),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0),
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildStatItem('Followers', '100K'),
                    _buildStatItem('Following', '200'),
                    _buildStatItem('Posts', '500'),
                  ],
                ),
                SizedBox(height: 20.0),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height:3,
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildProfileAction('Edit Profile', () {
                    }),
                    _buildProfileAction('Share Profile', () {
                    }),
                  ],
                ),
                SizedBox(height: 20.0),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height:3,
                ),
                SizedBox(height: 20.0),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FullScreenImageWithOptions(
                            imagePath: 'assets/post_$index.jpg',
                          ),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage('assets/post_$index.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // for the styling of follow following bla bla
  Widget _buildStatItem(String label, String value) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          value,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  //for eidt profile and share profile
  Widget _buildProfileAction(String label, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.black,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}