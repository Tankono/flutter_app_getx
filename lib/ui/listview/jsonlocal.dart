import 'package:flutter/material.dart';
import 'package:flutter_app_getx/json/JsonHelper.dart';
import 'package:flutter_app_getx/json/ProductDataModel.dart';



class JsonPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<JsonPage> {
  Json<ProductDataModel> jb = Json<ProductDataModel>(ProductDataModel.new);

  Widget itemView(ProductDataModel item) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image(
                image: NetworkImage(item.imageURL.toString()),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      item.name.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(item.price.toString()),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Json from Assets, delay 2 seconds',
          ),
        ),
        body: FutureBuilder(
          future: jb.getList('assets/json/products.json'),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ProductDataModel>;

              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    var item = items[index];
                    return itemView(item);
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }

}
