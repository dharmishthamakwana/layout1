import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String? folderName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff202020),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.schedule),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.folder),
                ],
              ),
              const Icon(Icons.search),
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              children: [
                //
                // storage , percentage,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.yellow, width: 2),
                        ),
                        child: const Text("93%",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Storage",
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Text(
                              "118.47GB",
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 10),
                            ),
                            Text(
                              " / 118.86GB",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Expanded(
                        child: SizedBox(
                      width: 100,
                    )),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 4,
                    width: double.infinity,
                    color: Colors.grey.shade800),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                        height: 20,
                      ),
                      Text("Internal storage",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 14)),
                      Icon(Icons.navigate_next,
                          color: Colors.grey.shade400, size: 15),
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                        ),
                      ),
                      Icon(
                        Icons.list,
                        size: 20,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.more_vert,
                        size: 20,
                        color: Colors.grey.shade400,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            fmLogo("Android"),
                            fmLogo("Biodata"),
                            fmLogo("browser"),
                            fmLogo("com.activision"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            fmLogo("Android"),
                            fmLogo("Biodata"),
                            fmLogo("browser"),
                            fmLogo("com.activision"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            fmLogo("Android"),
                            fmLogo("Biodata"),
                            fmLogo("browser"),
                            fmLogo("com.activision"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            fmLogo("Android"),
                            fmLogo("Biodata"),
                            fmLogo("browser"),
                            fmLogo("com.activision"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.cleaning_services_outlined),
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget fmLogo(String folderName) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 80,
      child: Column(
        children: [
          const FlutterLogo(size: 40),
          const SizedBox(
            height: 8,
          ),
          Text(
            folderName,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
