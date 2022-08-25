import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/api_provider/demodata_provider.dart';

class ProviderDemoScreen extends StatefulWidget {
  const ProviderDemoScreen({Key? key}) : super(key: key);

  @override
  State<ProviderDemoScreen> createState() => _ProviderDemoScreenState();
}

class _ProviderDemoScreenState extends State<ProviderDemoScreen> {
  DemoDataProvider postMdl = DemoDataProvider();

  @override
  void initState() {
    super.initState();
    postMdl = Provider.of<DemoDataProvider>(context, listen: false);
    postMdl.getPostData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: ListView.builder(
          itemCount: postMdl.post.length,
          itemBuilder: (context, index) => ListTile(
                title: Text(postMdl.post[index].userId.toString()),
                subtitle: Column(children: [
                  Row(
                    children: [
                      Text(postMdl.post[index].id.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Text(postMdl.post[index].title.toString())),
                    ],
                  ),
                ]),
              )),
    );
  }
}
