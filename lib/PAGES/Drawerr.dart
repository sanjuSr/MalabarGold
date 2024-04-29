import 'package:flutter/material.dart';
import 'package:malabargold/LOGIN/login.dart';

class Drawers extends StatelessWidget {
  Drawers({super.key});

  // late bool switchValue=false;

  @override
  Widget build(BuildContext context) {
    // late double screenHeight= MediaQuery.of(context).size.height;
    // late double screenWidth= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Image.asset('assets/images/malabarw.png',height: 46,),
          SizedBox(
            height: 20,
          ),
          drawerDatas(
            context: context,
            icon:Icons.notifications_none_rounded,
            text: 'Notifications',
            // trialing: Switch(value: switchValue, onChanged: (value) {
            //   switchValue=value;
            // },),
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.account_circle_outlined,
            text: 'My Account',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.branding_watermark_outlined,
            text: 'Brands',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.next_plan_outlined,
            text: 'Plans',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.phone,
            text: 'Contact Us',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.info_outline_rounded,
            text: 'About Us',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.settings_suggest_outlined,
            text: 'Settings',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.file_copy_outlined,
            text: 'Terms and Conditions',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          drawerDatas(
            context: context,
            icon:Icons.headset_mic,
            text: 'Get Help',
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),
          GestureDetector(
            onTap: () {
               Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Login()),
    );
            },
            child: drawerDatas(
              context: context,
              icon:Icons.login_outlined,
              text: 'Login',
            ),
          ),
          Divider(color: Color.fromARGB(255, 128, 47, 84),height: 3,),

        ],
      ),
    );
  }
  Widget drawerDatas({required context,required IconData icon,required String text,Widget? trialing}){
    late double screenHeight= MediaQuery.of(context).size.height;
    late double screenWidth= MediaQuery.of(context).size.width;

    return TextButton.icon(
      onPressed: (){},
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(LinearBorder()),
        alignment: Alignment.centerLeft,
        fixedSize: MaterialStatePropertyAll(Size(screenWidth,20)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      icon: Icon(icon,size: 23,),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,letterSpacing: 0.3),),
          trialing==null?SizedBox():trialing,
        ],
      ),
    );
  }
}