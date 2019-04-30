import 'package:flutter/material.dart';

class VideoList extends StatelessWidget {
  final listData;
  const VideoList({this.listData});

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    return ListView.separated(
        itemBuilder: (context, index) {
          if(deviceOrientation == Orientation.portrait){
            return _buildPortaitList(context, index);
          }else{
            return _buildLandscapeList(context, index);
          }
          
        },
        separatorBuilder: (context, index) => Divider(
              height: 1.0,
              color: Colors.grey,
            ),
        itemCount: listData.length);
  }

  Widget _buildPortaitList(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width, //dimensione dello schermo
          height: 200.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(listData[index].thumbNail),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(8.0),
          dense: true,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(listData[index].channelAvatar),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              listData[index].title,
              style: TextStyle(fontSize: 15),
            ),
          ),
          subtitle: Text(
              "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
          trailing: Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: Icon(Icons.more_vert)),
        ),
      ],
    );
  }

  Widget _buildLandscapeList(BuildContext context, int index) {
    return Container(
      
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 336.0 / 1.5, //dimensione dello schermo
            height: 188.0 / 1.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(listData[index].thumbNail),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  //dense: true,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(
                      listData[index].title,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  subtitle: Text(
                      "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
                  trailing: Container(
                      margin: const EdgeInsets.only(bottom: 30.0),
                      child: Icon(Icons.more_vert)),
                ),
                Container(
                  padding:  const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                  backgroundImage: NetworkImage(listData[index].channelAvatar),
                ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
