import 'package:flutter/material.dart';
import 'package:megghe_web_admin/constant/style.dart';
import 'package:megghe_web_admin/helpers/responsive_widget.dart';
import 'package:megghe_web_admin/widgets/custom_text.dart';

AppBar topNavBarr(
        BuildContext context, GlobalKey<ScaffoldState> key, String title) =>
    AppBar(
      
      title: Row(
        children: [
          Visibility(
            visible: ResponsivWidget.isSmallScreen(context)? false: true,
            child: CustomText(text: title,
             fontWeight: FontWeight.bold, size:20 , 
             color: ligthGrey,)),
             Expanded(child: Container()),
             IconButton(onPressed: (){}, icon: 
              Icon(Icons.settings,
               color: darck.withOpacity(0.7),)),
             Stack(children: [
               IconButton(icon: const Icon(Icons.notifications),
               onPressed: (){},),
               Positioned(child: Container(
                 width: 12,
                 height: 12,
                 padding: const EdgeInsets.all(4),
                 decoration: BoxDecoration(
                   color: active,
                   borderRadius: BorderRadius.circular(30),
                   border: Border.all(color: light, width: 2)),
               ), top: 7,right: 7,)
             ]),
             Container(
               width: 1,
               height: 22,
               color: ligthGrey,
             ),
             const SizedBox(
               width: 24,
             ),
             Visibility(child: CustomText(text: 'Louis Marc Leonard', color: ligthGrey)),
             const SizedBox(width: 16),
             Container(decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               color: Colors.white),
               child: Container(
                 padding: const EdgeInsets.all(2),
                 margin: const EdgeInsets.all(2),
                 child: CircleAvatar(
                   backgroundColor: light,
                   child: const Icon(Icons.person)),
               ),)

        ],
      ),
      leading: !ResponsivWidget.isSmallScreen(context)
          ? Row(
            children: [
              Container(
                padding:  const EdgeInsets.only(left: 14),
                child: Image.asset("images/logo.png", width: 28,)
              )
            ],
          )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon:  Icon(Icons.menu, color: ligthGrey,)),
      backgroundColor: light,
      elevation: 0,
      iconTheme: IconThemeData(color: darck),
      
    );
