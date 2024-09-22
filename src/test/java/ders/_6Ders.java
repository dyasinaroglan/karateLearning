package ders;

public class _6Ders {

    /*
    aynı testi çalıştırırsam status code was: 422, expected: 201, {"errors":{"title":["must be unique"]}} bunun nedeni Apı'nın aynı başlığa sahip iki makale oluşturmamıza izin vermemesi
     ve başlığın benzersiz olması gerektiğidir.
     oluşturulan başlık ile beklenen başlık farklı olursa
    match failed: EQUALS
     $ | not equal (STRING:STRING)
     'abcşampiyon2789'
     'abcşampiyon278' hatası alırız.
         --------------------------------------------------------------------
    @ignore etiketi o testi görmezden geldiğimizi gösteririz. belirli bir test senaryosunun çalıştırılmasını engellemek için kullanılır.
    Bu, belirli testlerin geçici olarak devre dışı bırakılması gerektiğinde özellikle yararlıdır.

       @skipme tag'ı ise bu tagı koyduğumuz senaryo dışındakleri çalıştırma, beni atla diyoruz

         ----------------------------------------

    # call ve read fonksiyonları ile CreateToken.feature dosyasını çağırıyoruz. classpath: ifadesi, Karate'ye bu dosyanın proje klasörü altında nerede bulunduğunu gösteriyor.
    # Bu işlem, CreateToken.feature dosyasını çalıştırarak orada dönen yanıtı (response) alıyor ve bunu tokenResponse adında bir değişkene atıyor.
    # call read(...) fonksiyonu, başka bir feature dosyasını çağırır ve oradaki test adımlarını çalıştırır.
    # Bu işlem sonucunda, CreateToken.feature dosyasında dönen yanıtları kullanabiliriz.

       -------------------------------------------------------------------------
      Bu satırda, CreateToken.feature dosyasını çağırırken ona parametreler gönderiyoruz:

      {"email": "karate100@test.com", "password": "Karate"} ifadesi, CreateToken.feature dosyasındaki email ve password değişkenlerine değerler sağlar.
      Bu sayede, CreateToken.feature dosyasında yazılmış olan #(email) ve #(password) yerlerine burada verilen gerçek email ve password değerleri geçer.


     */

}
