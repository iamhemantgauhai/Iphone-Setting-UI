  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom.dart';
import 'controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final theChange = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const CupertinoNavigationBar(
          leading: Text('Settings',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          backgroundColor: Colors.black38,
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            alignment: Alignment.center,
            decoration: const BoxDecoration(color: Colors.white10),
            child: const ListTile(
              leading: SizedBox(
                height: 90,
                width: 60,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('images/userEmoji.jpg'),
                ),
              ),
              title: Text(
                'Bharat Kapila',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Apple ID, iCloud, Media and purchase',
                style: TextStyle(color: Colors.white54),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white38,
                size: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          UniqueTile(
            firstText: 'iOS 15.3 Now Available',
            secColor: Colors.white,
            dataChange: Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/one.jpg'),
                  radius: 12.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.white30,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          GetBuilder<Controller>(builder: (controller) {
            return MyTile(
              text: 'Airplane Mode',
              secColor: Colors.white,
              firstOne: Colors.amber,
              iconSec: CupertinoIcons.airplane,
              dataChange: CupertinoSwitch(
                activeColor: Colors.green,
                value: theChange.value,
                onChanged: (val) {
                  theChange.change(val);
                },
              ),
            );
          }),
          MyTile(
            text: 'Wi-Fi',
            secColor: Colors.white,
            firstOne: Colors.blue,
            iconSec: Icons.wifi,
            dataChange: Row(
              children: const [
                Text(
                  'Appscrip-NetPlus2.4G',
                  style: TextStyle(
                      color: Colors.white54,
                      letterSpacing: 0.8,
                      fontSize: 12.5),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.white30,
                )
              ],
            ),
          ),
          MyTile(
            text: 'Bluetooth',
            secColor: Colors.white,
            firstOne: Colors.blue,
            iconSec: Icons.bluetooth,
            dataChange: Row(
              children: const [
                Text('On',
                    style: TextStyle(
                        color: Colors.white30,
                        letterSpacing: 0.8,
                        fontSize: 15)),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.white30,
                )
              ],
            ),
          ),
          MyTile(
            text: 'Mobile Data',
            secColor: Colors.white,
            firstOne: Colors.green,
            iconSec: CupertinoIcons.antenna_radiowaves_left_right,
            dataChange: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.white30,
            ),
          ),
          MyTile(
            text: 'Personal Hotspot',
            secColor: Colors.white,
            firstOne: Colors.green,
            iconSec: CupertinoIcons.personalhotspot,
            dataChange: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.white30,
            ),
          ),
          MyTile(
            text: 'VPN',
            secColor: Colors.white,
            firstOne: Colors.blue,
            iconSec: Icons.vpn_key_sharp,
            dataChange: Row(
              children: const [
                Text('Not Connected',
                    style: TextStyle(
                        color: Colors.white30,
                        letterSpacing: 0.8,
                        fontSize: 15)),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.white30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          MyTile(
            text: 'Notifications',
            secColor: Colors.white,
            firstOne: Colors.redAccent,
            iconSec: CupertinoIcons.app_badge,
            dataChange: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.white30,
            ),
          ),
          MyTile(
            text: 'Sound & Haptics',
            secColor: Colors.white,
            firstOne: Colors.red,
            iconSec: CupertinoIcons.volume_up,
            dataChange: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.white30,
            ),
          ),
          MyTile(
            text: 'Do Not Disturb',
            secColor: Colors.white,
            firstOne: Colors.deepPurpleAccent,
            iconSec: CupertinoIcons.moon_fill,
            dataChange: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.white30,
            ),
          ),
          MyTile(
            text: 'Screen Time',
            secColor: Colors.white,
            firstOne: Colors.deepPurpleAccent,
            iconSec: CupertinoIcons.hourglass,
            dataChange: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
              color: Colors.white30,
            ),
          )
        ],
      ),
    );
  }
}
