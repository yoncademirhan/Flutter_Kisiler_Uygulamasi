import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class KisilerDaoRepository{
  var collectionKisiler=FirebaseFirestore.instance.collection("Kisiler");


  Future<void>kaydet(String kisi_ad, String kisi_tel) async{
  var yeniKisi=HashMap<String,dynamic>();
  yeniKisi["kisi_id"] ="";
  yeniKisi["kisi_ad"]=kisi_ad;
  yeniKisi["kisi_tel"]=kisi_tel;
  collectionKisiler.add(yeniKisi);
  }


  Future<void>guncelle(String kisi_id, String kisi_ad, String kisi_tel) async{
    print("Kişi Güncelle : $kisi_id- $kisi_ad - $kisi_tel");
  }

  Future<void> sil(String kisi_id) async{
    print("Kişi Sil: $kisi_id");
  }




}