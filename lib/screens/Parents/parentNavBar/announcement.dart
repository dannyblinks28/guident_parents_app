import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/Parents/home_parents.dart';

import '../../../constants/colors.dart';
import '../../../utils/screen_navigator.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(color: ConstantColors.bgColor),
              child: GestureDetector(
                onTap: () {
                  nextScreenPush(
                    context,
                   const HomeParents(),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: IconButton(
                        onPressed: () {
                          nextScreenPush(
                            context,
                            const HomeParents(),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Announcement',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                   const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.add,
                          color: ConstantColors.bgColor,
                          size: 35,
                        ),
                        Text(
                          'Add New',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ConstantColors.bgColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: ConstantColors.dotUnselectColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'School resumes on the 22nd of January, 2023',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('December 16, 2022'),
                            SizedBox(height: 5),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur. Egestas pulvinar pharetra ornare lectus elementum....',
                              style: TextStyle(
                                fontSize: 14.5,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstantColors.borderColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'All Parents',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ConstantColors.bgColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstantColors.borderColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'All Teachers',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ConstantColors.bgColor),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    //to be divided here
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: ConstantColors.dotUnselectColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'School resumes on the 22nd of January, 2023',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('December 16, 2022'),
                            SizedBox(height: 5),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur. Egestas pulvinar pharetra ornare lectus elementum....',
                              style: TextStyle(
                                fontSize: 14.5,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstantColors.borderColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'All Parents',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ConstantColors.bgColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstantColors.borderColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'All Teachers',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ConstantColors.bgColor),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: ConstantColors.dotUnselectColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'School resumes on the 22nd of January, 2023',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('December 16, 2022'),
                            SizedBox(height: 5),
                            Text(
                              'Lorem ipsum dolor sit amet consectetur. Egestas pulvinar pharetra ornare lectus elementum....',
                              style: TextStyle(
                                fontSize: 14.5,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstantColors.borderColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'All Parents',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ConstantColors.bgColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ConstantColors.borderColor,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'All Teachers',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ConstantColors.bgColor),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
