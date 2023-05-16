part of 'pages.dart';

const double defaultMargin = 24.0;

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key});

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
              top: -0,
              left: 0,
              child: Image.asset(
                'assets/images/awan.png',
                height: 300,
                width: 450,
              ),
            ),
            Center(
              child: Transform.translate(
                offset: Offset(0, -90),
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/images/Logo.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 160,
              left: defaultMargin,
              right: defaultMargin,
              child: Container(
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context, builder: (context){
                        return StatefulBuilder(
                          builder: 
                          (BuildContext context, StateSetter setState){
                          return Wrap(
                            children: [
                              Container(
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(color: secondaryColor,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))),
                                  child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: defaultMargin),
                                    child: Column
                                                                   (
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                      SizedBox(height: 25,),
                                      Row(children: [
                                        Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                        Text('Welcome',
                                        style: secondaryTextStyle.copyWith(
                                          fontSize: 20,
                                          color: 
                                          blackColor),
                                        ),
                                        Text(
                                                    'Register',
                                                    style: secondaryTextStyle
                                                        .copyWith(
                                                          fontWeight: FontWeight.bold,
                                                            fontSize: 30,
                                                            color: blackColor),
                                                  ),
                                        ],
                                        ),
                                        Spacer(),
                                        Center(                    
                                  
                                        child: InkWell(onTap: (){Navigator.pop(context);},
                                          child: Image.asset('assets/images/close.png',height: 30,width: 30,))
                                        )
                                      ],),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                      hintText: 'name@example.com',
                                      labelText: 'Username or Email',
                                      )),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      hintText:
                                                          'Name',
                                                      labelText:
                                                          'Name',
                                                      
                                                      )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                    TextField(
                                     
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      hintText:
                                                          'Password',
                                                      labelText:
                                                          'Password',
                                                      suffixIcon: InkWell(
                                                        onTap: (){},
                                                        child: Icon(
                                                          Icons
                                                            .visibility_outlined ),
                                                      ))),
                                              SizedBox(
                                                height: 20,
                                              ),
                                    TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      hintText:
                                                          'Confirm Password',
                                                      labelText:
                                                          'Confirm Password',
                                                      suffixIcon: InkWell(
                                                        onTap: () {},
                                                        child: Icon(Icons
                                                            .visibility_outlined),
                                                      ))),
                                              SizedBox(
                                                height: 20,
                                              ),
                                    Container(
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width - 2 * defaultMargin,
                      0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text('Already have an Account?', style: blackTextStyle.copyWith(color: blackColor, fontSize: 18),)
                                                  ,Text('Login', style: blackTextStyle.copyWith(color: primaryColor, fontSize: 18),)
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultMargin,
                                              ),
                                    ]),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                        );
                      });
                  },
                  child: Text(
                    'Create Account',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width - 2 * defaultMargin,
                      0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: defaultMargin,
              right: defaultMargin,
              child: Container(
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              topLeft: Radius.circular(40))),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: defaultMargin),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Welcome',
                                                        style: secondaryTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                color:
                                                                    blackColor),
                                                      ),
                                                      Text(
                                                        'Login',
                                                        style: secondaryTextStyle
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 30,
                                                                color:
                                                                    blackColor),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                      child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Image.asset(
                                                            'assets/images/close.png',
                                                            height: 30,
                                                            width: 30,
                                                          )))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              TextField(
                                                  decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                hintText: 'name@example.com',
                                                labelText: 'Username or Email',
                                              )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            
                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      hintText: 'Password',
                                                      labelText: 'Password',
                                                      suffixIcon: InkWell(
                                                        onTap: () {},
                                                        child: Icon(Icons
                                                            .visibility_outlined),
                                                      ))),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              
                                              Container(
                                                height: 60,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Login',
                                                    style: secondaryTextStyle
                                                        .copyWith(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: secondaryColor,
                                                    ),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: primaryColor,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    minimumSize: Size(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width -
                                                          2 * defaultMargin,
                                                      0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Dont have an Account?',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            color: blackColor,
                                                            fontSize: 18),
                                                  ),
                                                  Text(
                                                    'Register',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            color: primaryColor,
                                                            fontSize: 18),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultMargin,
                                              ),
                                            ]),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        });
                  },
                  child: Text(
                    'Login',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    onPrimary: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: secondaryColor),
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width - 2 * defaultMargin,
                      0,
                    ),
                  ),
                ),
              ),
        ), 
        Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'All Right Reserved 2023 @ravvq',
                  style: secondaryTextStyle.copyWith(
                    color: secondaryColor,
                    fontSize: 11,),)))
        ],
        ),
      ),
    );
  }
}

