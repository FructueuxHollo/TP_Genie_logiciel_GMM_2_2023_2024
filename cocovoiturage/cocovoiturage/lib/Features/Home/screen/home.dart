import 'package:cocovoiturage/Features/Home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: state.status == "Driver"
                ? Colors.greenAccent
                : Colors.blueAccent,
            leading: Row(
              children: [
                SizedBox(
                  width: swidth * 0.01,
                ),
                InkWell(
                  onTap: () {
                    print("driver");
                    context
                        .read<HomeBloc>()
                        .add(StatusChange(newStatus: "Driver"));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    height: sheight * 0.05,
                    width: swidth * 0.08,
                    child: const Center(child: Text("Driver")),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("passenger");
                    context
                        .read<HomeBloc>()
                        .add(StatusChange(newStatus: "Passenger"));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    height: sheight * 0.05,
                    width: swidth * 0.08,
                    child: const Center(child: Text("Passenger")),
                  ),
                )
              ],
            ),
            centerTitle: true,
            title: const Text("CoCoVoiturage"),
            actions: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  const Text("Rechercher"),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
                const Text("Publiez un Trajet")
              ]),
              SizedBox(
                width: swidth * 0.01,
              ),
            ],
          ),
          body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.amber),
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: double.infinity,
                  ),
                  // const SizedBox(
                  //   // height: MediaQuery.of(context).size.height * 0.05,
                  //   height: 15,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.blue),
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width * 0.43,
                      ),
                      Container(
                        decoration: const BoxDecoration(color: Colors.blue),
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width * 0.43,
                      ),
                    ],
                  )
                ],
              )),
        );
      },
    );
  }
}
