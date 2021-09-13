import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/secondpage.dart';
class HomePage extends StatefulWidget {

static final String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

late PageController pageController;
int tartib=0;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 0
    );
  }

@override
  void dispose() {
    // TODO: implement dispose
    
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
          controller: pageController,
          onPageChanged: (int index){
                setState(() {
                  tartib = index;
                });
          },
          children: [

              oynalar("Learn from experts", "Select from top instructors around the world", "assets/images/image_1.png"),
              
              oynalar("Go at your own pace", "Enjoy lifetime access to courses on PDP's website and app", "assets/images/image_2.png"),
              
              oynalar("Find video courses", "Build your library for your career and personal growth", "assets/images/image_3.png"),
              
              

          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(),
            
          ),
        ),
        tartib==2?Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Container(
            margin: EdgeInsets.only(bottom: 15,right: 30),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushReplacementNamed(context, SecondPage.id);
                });
              },
              child: Text("Skip",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold))))
        ],):Container()
          ],
          
        )
      )  
       );
  }
 Widget oynalar(title1, title2, image){
   
    
    return Container(
                padding: EdgeInsets.all(20),
                
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 100,),
                      Text(title1,style: TextStyle(color: Colors.red,fontSize: 26,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text(title2,style: TextStyle(color: Colors.grey,fontSize: 20),textAlign:TextAlign.center),
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image),
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }

  Widget indicator(bool isActive){
    return AnimatedContainer(
      height: 6,
      width: isActive ? 25:6,
      margin: EdgeInsets.only(left: 2,right: 2,bottom: 20),
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.red
      ),
      );
  }
    List<Widget>  buildIndicator(){

      List<Widget>  indicators = [];

      for(int i=0;i<3;i++){
        if(tartib == i){
          indicators.add(indicator(true));
        }
        else{
           indicators.add(indicator(false));
        }
      }
      return indicators;
    }
  
}