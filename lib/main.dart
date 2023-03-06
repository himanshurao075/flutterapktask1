import 'package:flutter/material.dart';
import 'package:task1/sheetModal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: Colors.orange,
          textTheme: const TextTheme(
              headlineSmall: TextStyle(color: Colors.indigo),
              headlineMedium: TextStyle(color: Colors.indigo),
              headlineLarge: TextStyle(
                color: Colors.indigo,
              ))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SheetModel sheet = SheetModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sheet = SheetModel(
        heading1: "ToneTeen.com - Tools & Charts",
        heading2: "Workout Log",
        topFileds: [
          TopFiled(label: "Date"),
          TopFiled(label: "Start Time"),
          TopFiled(label: "End Time"),
        ],
        sections: [
          SectionsModel(sectionTitle: "Uper Body", columnsLabels: [
            "Muscale",
            "Exercise",
            "Weight",
            "# of Reps",
            "Notes"
          ], rows: [
            RowModel(children: [
              CellModel(
                content: "Chest",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Back",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Shoulders",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Biceps",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Triceps",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
          ]),
          SectionsModel(sectionTitle: "Lower Body", columnsLabels: [
            "Muscale",
            "Exercise",
            "Weight",
            "# of Reps",
            "Notes"
          ], rows: [
            RowModel(children: [
              CellModel(
                content: "Quads",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Hamstrings",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Calves",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
            RowModel(children: [
              CellModel(
                content: "Abs",
                isFiled: false,
              ),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(noOfFiled: 4),
              CellModel(isFiled: false),
            ]),
          ]),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            title: Column(
              children: [
                Text(
                  sheet.heading1,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  sheet.heading2,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(sheet.topFileds.length, (index) {
                    final item = sheet.topFileds[index];
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "${item.label} : ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: sheet.sections.length,
                  itemBuilder: (context, index) {
                    final section = sheet.sections[index];
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        children: [
                          Container(
                            color: Colors.orange.shade400,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(children: [
                                Text(section.sectionTitle,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontWeight: FontWeight.w600))
                              ]),
                            ),
                          ),
                          Table(
                            children: [
                              TableRow(
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade100),
                                  children: List.generate(
                                      section.columnsLabels.length, (index) {
                                    final columnLebels =
                                        section.columnsLabels[index];
                                    return Text(
                                      columnLebels,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                    );
                                  })),
                              ...List.generate(
                                  section.rows.length,
                                  (index) => TableRow(
                                          children: List.generate(
                                              section.rows[index].children
                                                  .length, (index2) {
                                        final rowModel = section
                                            .rows[index].children[index2];
                                        return
                                            // rowModel.isFiled ? Column(children: List.generate(rowModel.noOfFiled, (index) => ),) :

                                            Text(rowModel.content);
                                      })))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
