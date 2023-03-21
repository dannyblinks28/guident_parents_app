import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../utils/screen_navigator.dart';
import '../../../utils/widgets/TaxiButton.dart';
import '../home_parents.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(color: ConstantColors.bgColor),
              child: GestureDetector(
                onTap: () {
                  nextScreenPush(
                    context,
                    HomeParents(),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: IconButton(
                        onPressed: () {
                          onPressed:
                          () {
                            nextScreenPush(
                              context,
                              HomeParents(),
                            );
                          };
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'View Result',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/schoolLogo.png',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Edufield Children’s School',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '2118 Thornridge Cir. Syracuse, Connecticut 35624',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Academic Report',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2018/2019 Academic Session',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: ConstantColors.subtextColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ConstantColors.pbgColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: ConstantColors.textFieldColor,
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: ConstantColors.dotUnselectColor,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 25,
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/position.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Position',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '5th',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ConstantColors.pbgColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: ConstantColors.textFieldColor,
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: ConstantColors.dotUnselectColor,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 25,
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/percent.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Percentage',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '91.77',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Personal Data',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 18,
                              color: ConstantColors.resultTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Jessica Alba',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/resultImg.png',
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: ConstantColors.dividerColor,
                    height: 5,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Roll Number',
                    style: TextStyle(
                      fontSize: 18,
                      color: ConstantColors.resultTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '005',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: ConstantColors.dividerColor,
                    height: 5,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Date of Birth',
                    style: TextStyle(
                      fontSize: 18,
                      color: ConstantColors.resultTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '24th September, 2007',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: ConstantColors.dividerColor,
                    height: 5,
                    thickness: 2.0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Emergency Contact',
                    style: TextStyle(
                      fontSize: 18,
                      color: ConstantColors.resultTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '+234812345678',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: ConstantColors.bgColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Attendance',
                        style: TextStyle(
                          color: ConstantColors.pbgColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Table(
                    defaultColumnWidth: FixedColumnWidth(120),
                    border: TableBorder.all(
                        color: ConstantColors.dotUnselectColor,
                        style: BorderStyle.solid,
                        width: 2),
                    children: [
                      TableRow(
                        children: [
                          Column(
                            children: [Text('Total Days')],
                          ),
                          Column(
                            children: [Text('256')],
                          ),
                        ],
                      ),
                      TableRow(children: [
                        Column(
                          children: [Text('Present')],
                        ),
                        Column(
                          children: [Text('244')],
                        ),
                      ]),
                      TableRow(
                        children: [
                          Column(
                            children: [Text('Absent')],
                          ),
                          Column(
                            children: [
                              Text(
                                '12',
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Academic Performance',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Subject',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Test 1',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Test 2',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Exam',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Grade',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(
                            Text(
                              'Mathematics',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '18',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '10',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '47',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '75',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              'A',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]),
                        DataRow(
                          selected: true,
                          cells: [
                            DataCell(
                              Text(
                                'Eng. Language',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '18',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '60',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '98',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                'Chemistry',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '16',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '56',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '92',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          selected: true,
                          cells: [
                            DataCell(
                              Text(
                                'Physics',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '09',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '11',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '55',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '75',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                'Biology',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '08',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '02',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '52',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '62',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'C',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          selected: true,
                          cells: [
                            DataCell(
                              Text(
                                'Geography',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '17',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '18',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '50',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '85',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                'Comp. Science',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '15',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '60',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '95',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          selected: true,
                          cells: [
                            DataCell(
                              Text(
                                'Home Economics',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '18',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '48',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '76',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(
                              Text(
                                'Trade',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '59',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '99',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DataRow(
                          selected: true,
                          cells: [
                            DataCell(
                              Text(
                                'Economics',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '18',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '17',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '35',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                '70',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                'A',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Grade',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'A',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'B',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'C',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'D',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'E',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'F',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      rows: const [
                        DataRow(selected: true, cells: [
                          DataCell(
                            Text(
                              '%',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '80-100',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '65-79',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '56-64',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '46-55',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '40-45',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '0-39',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Teacher\'s Remark',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ConstantColors.containerBgColor,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: ConstantColors.containerBorderColor)),
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium eu tortor erat cursus. Senectus ornare augue non viverra. Faucibus aliquet mattis integer quis venenatis ullamcorper euismod. Dignissim leo.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  TaxiButton(
                    title: 'Print Result',
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
