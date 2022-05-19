void main() {
  final s1 = Stream.periodic(
    Duration(seconds: 2,), (a) => a * 2,);

 // final sub= s1.listen((event) => print(event),
 //    // onDone: ()=>print("Done"),
 //    // onError:(error)=>print(error) ,
 //    // cancelOnError: true,
 //  );
 //
 // sub.onData((data) {
 //   data>10 ?  sub.pause() : print(data);
 //   sub.onDone(() {
 //     print("done ....");
 //   });
 // });

 final s2 =s1.where((event) => event%2==0);
 s2.listen((event) {
   print(event);
 });
}
