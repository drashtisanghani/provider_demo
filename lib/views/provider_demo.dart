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
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: postMdl.post.data == null
                ? const Center(child: CircularProgressIndicator())
                : Text(
                    postMdl.post.data!.adId!.admob_banner.toString(),
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
          ),
          const SizedBox(height: 20),
         
        ],
      ),
      
    );
  }
}
