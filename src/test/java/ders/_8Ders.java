package ders;

public class _8Ders {

    /*
    Enviroment Veriables

             karate.config.js dosyamız bizim değişken atayacağımız kısım olacak

             var config = {

    apiUrl: 'https://conduit-api.bondaracademy.com/api/',

                       }

                       Sonrasında Given url apiUrl şeklinde çağırıyoruz


                     1. karate-config.js Dosyasının Amacı
                     karate-config.js, Karate testlerinin başlangıcında bir kez çalıştırılır ve bu dosya, projede tüm testlerde kullanılabilecek değişkenler, URL'ler ve diğer yapılandırmaların ayarlandığı bir yapılandırma dosyasıdır.
                     Bu dosyada, farklı ortamlara (örneğin, dev, qa, prod) göre farklı yapılandırmalar ayarlayabilirsiniz.

                     2. Çevre Değişkeninin Ayarlanması (karate.env)
                     Karate projelerinde farklı ortamlar (dev, qa, prod vb.) olabilir. Bu ortamlara göre farklı yapılandırmalar kullanmak isteyebilirsiniz.
                     Bu nedenle Karate, karate.env adlı bir sistem değişkeni kullanır. Eğer karate.env ayarlanmamışsa, varsayılan olarak dev ortamını kullanırız.

                     3.Tüm testler boyunca aynı token'ı kullanmak için, token değerini karate-config.js içinde tanımlıyorsunuz.
                     karate.callSingle fonksiyonu ile token'ı sadece bir kez alıyorsunuz ve bunu tüm testler boyunca kullanıyorsunuz.

                     var accessToken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken;

                     karate.callSingle: Bu fonksiyon, belirttiğiniz CreateToken.feature dosyasını bir kez çalıştırır ve dönen sonucu saklar. Daha sonra tekrar çağrılmaz, aynı token tüm testlerde kullanılır.


                     karate.configure('headers', { Authorization: 'Token ' + accessToken });

                     karate.configure: Karate'nin global ayarlarını yapmanızı sağlar. Bu satırda, her API isteğinde kullanılacak olan yetkilendirme başlığını (Authorization) ayarlıyorsunuz.


     */
}
