import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>>{
  AnasayfaCubit():super(<Kisiler>[]);

 var krepo=KisilerDaoRepository();

  var collectionKisiler=FirebaseFirestore.instance.collection("Kisiler");


Future<void>kisileriYukle() async{
  collectionKisiler.snapshots().listen((event) {
    var kisilerListesi =(<Kisiler>[]);

  });

}

  Future<void>ara(String aramaKelimesi) async{

  }

  Future<void> sil(String kisi_id) async{
  await krepo.sil(kisi_id);
  await kisileriYukle();
  }

}