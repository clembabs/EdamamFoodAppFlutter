import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String image, label,source;
  final double calories;

  const BlogTile({
    Key key,
    @required this.image,
    @required this.label,
    @required this.source,
    @required this.calories,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              GestureDetector(
                onTap: () {
                  
                },
                                  child: Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.network(image,
                        height: 120.0,
                        width: 120.0,
                        fit: BoxFit.fitHeight) ==
                    null
                ?  Image.asset(
                         'assets/image.png',
                          height: 90.0,
                          width: 90.0,
                          fit: BoxFit.fitHeight,
                        )  : Image.network(image,
                  height: 120.0, width: 120.0, fit: BoxFit.fitHeight),
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  label,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    //color: Color(0xFFD73C29),
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                       top: 8),
                                  child: Text(
                                    source,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                                
                              ]),
                        )
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   mainAxisAlignment: MainAxisAlignment.end,
                          
                        //   children: <Widget>[
                        //     Icon(Icons.add_box, color: Colors.black)
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              )
          ],
        );
    // return GestureDetector(
    //   onTap: () {},
    //   child: Card(
    //       elevation: 1.0,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10.0),
    //       ),
    //       child: Container(
    //         padding: EdgeInsets.all(8.0),
    //         child: Row(
    //           children: <Widget>[
    //             Image.network(image,
    //                         height: 120.0,
    //                         width: 120.0,
    //                         fit: BoxFit.fitHeight) ==
    //                     null
    //                 ? Image.asset('assets/image.png',
    //                     height: 120.0, width: 120.0, fit: BoxFit.fitHeight)
    //                 : Image.network(image,
    //                     height: 120.0, width: 120.0, fit: BoxFit.fitHeight),
    //                     Flexible(child: Padding(
    //               padding: EdgeInsets.only(left: 10.0),
    //               child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: <Widget>[
    //                     Text(
    //                       label,
    //                       overflow: TextOverflow.ellipsis,
    //                       maxLines: 1,
    //                       style: TextStyle(
    //                         fontSize: 16.0,
    //                         //color: Color(0xFFD73C29),
    //                         color: Colors.red,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     Text(
    //                     source,
    //                       style: TextStyle(
    //                         color: Colors.black54,
    //                         fontSize: 14.0,
    //                       ),
    //                     ),
                        
                       
    //                     SizedBox(height: 10.0),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: <Widget>[
    //                         Container(
    //                           margin: EdgeInsets.only(right: 4.0),
    //                           child: Column(
    //                             children: <Widget>[
    //                               Text(
    //                                 'Calories:',
    //                                 style: TextStyle(
    //                                   color: Colors.black38,
    //                                   fontSize: 12.0,
    //                                   fontWeight: FontWeight.bold,
    //                                 ),
    //                               ),
    //                               Text(
    //                                 calories.toString() == null ? "calories" : calories.toString(),
    //                                 style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 9.0,
    //                                   fontWeight: FontWeight.bold,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         Container(
    //                           margin: EdgeInsets.only(left: 4.0),
    //                           child: Column(
    //                             children: <Widget>[
    //                               Text(
    //                                 'From:',
    //                                 style: TextStyle(
    //                                   color: Colors.black38,
    //                                   fontSize: 12.0,
    //                                   fontWeight: FontWeight.bold,
    //                                 ),
    //                               ),
    //                               Text(
    //                               'Edamam foods',
    //                                 style: TextStyle(
    //                                   color: Colors.black,
    //                                   fontSize: 9.0,
    //                                   fontWeight: FontWeight.bold,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ],
    //                     )
    //                   ]),
    //             ))
    //           ],
    //         ),
    //       )),
    // );
  }
}
