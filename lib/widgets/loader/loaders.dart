import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'opaque_container.dart';

class LoaderWithGradient extends StatelessWidget {
  const LoaderWithGradient({
    super.key,
    this.itemExtent,
    this.itemCount,
    required this.gradient,
  });

  final double? itemExtent;
  final int? itemCount;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // return a Loader card with gradient background
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: CupertinoActivityIndicator(
            radius: 15,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 100,
              maxHeight: MediaQuery.of(context).size.height * 80),
          child: ListView.builder(
            itemExtent: itemExtent ?? 150,
            itemCount: itemCount ?? 4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 7,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: gradient,
                  ),
                  child: Shimmer.fromColors(
                    baseColor: Colors.transparent,
                    highlightColor: Colors.grey.shade100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const OpaqueContainer(height: 20, width: 100),
                        const SizedBox(
                          height: 6,
                        ),
                        OpaqueContainer(
                          height: 20,
                          width: 200,
                          color: Colors.grey.withOpacity(0.55),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        OpaqueContainer(
                          height: 10,
                          width: 20,
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Loader extends StatelessWidget {
  final int? itemCount;
  final double? itemExtent;
  final Color? color;

  const Loader({super.key, this.itemCount, this.itemExtent, this.color});

  @override
  Widget build(BuildContext context) {
    // return a Loader card with normal color background
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: CupertinoActivityIndicator(
            radius: 15,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 100,
              maxHeight: MediaQuery.of(context).size.height * 80),
          child: ListView.builder(
            itemExtent: itemExtent ?? 150,
            itemCount: itemCount ?? 4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 7,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  color: color ?? Colors.cyan.shade200,
                  child: Shimmer.fromColors(
                    baseColor: Colors.transparent,
                    highlightColor: Colors.grey.shade100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OpaqueContainer(
                          height: 15,
                          width: 100,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        OpaqueContainer(
                          height: 15,
                          width: 200,
                          color: Colors.grey.withOpacity(0.55),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
