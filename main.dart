/*
Final run time , const derleme time, sabit değerlilerdir.
var kullanılır genelde.

list: bir eleman birden kez olabilir. []
set :her eleman sadece bir tanedir. {}. Küme.
map : {'a':1, 'b':2}. key value. set ile aynı mantık

değişkenler değere referans olur. Yani değer değiştiğinde o değeri tutanların hepsinde değişim olur.
ör: liste[{a,b},{c,d}] olsun. ikici = liste[1] ve ikinci.remove['c'] dersem. Listedeki c elemanıda gider ve yeni liste [{a,b},{d}] olur.
bu özelliktekiler mutable: değişebilendir.
ama int a=5 veya string b='c' gibi şeyler immutable yani değişmezdir. Bunlarda bu problem yaşanmaz.

classtaki değişkenlere alt+insert denilerek değer verilir.
toString print edilebilmeyi sağlar.

method ve get stringgi .gdfgfdg diyerek kullanabiliyoruz.
get stiringleri birleştirebiliyor. set ayırabiliyor.
static diyince global olmuyor.

non-nullable: string s; daha sonra bu s ye bir değer vermemiz lazım yoksa compiler error.
nullable: string? s; daha sonra değer vermemiz şart değir. null da olabilir demiş oluyoruz ve hata vermiyor.

try{
kod satırı
hatalı (durur)
}catch(e){
hata varsa çalışacak olan satırlar}

pub.dev den isstediğin kütüphanenin kodunu pub.yaml dosyasını açıp terminale yapıştır.

alt+enter ile hataları çöz. ide özelliği

private oluşturmak için _ kullanılır ve class başka dosyada konulur.
referans olayı classlarda da var.

class ı komple immutable yani sonradan değişmeyen yapmak istersek;
@immutable
class myClass{

mesela direkt hazır öğrenci oluşturmak için;
ogrenci.onsekiz(String ad): this(ad, 18);
sonra main içinde
o2 = ogrenci.onsekiz('ali'); dediğimizde yaş direkt 18 oldu.

veya bir tane hazır oluştur: o2 = ogrenci('mehmet','16');
daha sonra class içince factory ogrenci.hazir{return o2;} dediğimizde
main içinde o3 = o2.hazir; diyerek yapılabilir.

c.property field gibi ama method gibi de çalışabiliyor.
getter: int get value {return 5;} daha sonra main de print(o.value) = 5 yazar.
setter: getter gibi ama parametreli: set value(int v) {print(v+9)} daha sonra main de o.value(5) = 14 yazar.

class B extends A {
@override (A daki methotlar ile B dekileri ayırabilmek için ve super. şeklinde fln filan :( )
A nın özelliklerini de taşıyan b classı. (A nın değişkenlerini vs. kullanabiliyorsun.)

ogrenci<ogretmen> ogretmen türündeki şeyleri girebiliyoruz demek oluyor.

...li spread operatörü

widget türlerini googleda aratarak örnek kullanımlar bulunabilir. örn: bottom navigation bar class. api.flutter.dev diye bir sitede var bunlar. W3school gibi bişey.

stless ve stfull kısayol

build() fonksiyonu state değişken değiştirmemeli ???

 */




void main(){

  ogrenci o1 = ogrenci('Isa','Kocan','Nenehatun Ilkokulu', '4-D', 'Avni');

  o1.ogrenciBilgileri();

}

class ogrenci{
  String ogrenciAd;
  String ogrenciSoyad;
  String ogrenciOkul;
  String ogrenciSinif;
  String ogrenciHoca;

  ogrenci(this.ogrenciAd, this.ogrenciSoyad, this.ogrenciOkul, this.ogrenciSinif, this.ogrenciHoca);

  void ogrenciBilgileri(){
    print('Ogrencinin adi   : $ogrenciAd \nOgrencinin soyadi: $ogrenciSoyad \nOgrencinin okulu : $ogrenciOkul \nOgrencinin sinifi: $ogrenciSinif\nOgrencinin hocası: $ogrenciHoca');
  }
}