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

                     apiUrl gibi veriler genellikle tüm ortamlar (dev, qa, prod vb.) için ortak olabileceği gibi, ortamdan ortama değişebilir.
                     Bu yapıda, tek bir yerden URL yönetimi yapılabilir. Eğer farklı bir ortamda farklı bir URL kullanmak isterseniz, config içine kolayca başka URL'ler ekleyebilirsiniz.

                     2. Çevre Değişkeninin Ayarlanması (karate.env)
                     Karate projelerinde farklı ortamlar (dev, qa, prod vb.) olabilir. Bu ortamlara göre farklı yapılandırmalar kullanmak isteyebilirsiniz.
                     Bu nedenle Karate, karate.env adlı bir sistem değişkeni kullanır. Eğer karate.env ayarlanmamışsa, varsayılan olarak dev ortamını kullanırız.

                     Bu, testlerinizi farklı ortamlar için daha modüler hale getirir. Eğer karate.env dev ise dev ortamı için olan kullanıcı bilgileri ayarlanır, qa ise qa ortamı için olan bilgiler ayarlanır.
                     Bu sayede her test senaryosunda kullanıcı bilgilerini manuel olarak değiştirmek zorunda kalmazsınız.

                     3.Tüm testler boyunca aynı token'ı kullanmak için, token değerini karate-config.js içinde tanımlıyorsunuz.
                     karate.callSingle fonksiyonu ile token'ı sadece bir kez alıyorsunuz ve bunu tüm testler boyunca kullanıyorsunuz.

                     var accessToken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken;

                     Token'ı her testten önce yeniden almanıza gerek yoktur. Bir kere alındığında, tüm testlerde kullanmak yeterli olur.
                     Bu performans açısından da faydalıdır, çünkü her seferinde API'ye oturum açma isteği gönderilmesi gerekmez.

                     karate.callSingle: Bu fonksiyon, belirttiğiniz CreateToken.feature dosyasını bir kez çalıştırır ve dönen sonucu saklar. Daha sonra tekrar çağrılmaz, aynı token tüm testlerde kullanılır.


                     karate.configure('headers', { Authorization: 'Token ' + accessToken });

                     karate.configure: Karate'nin global ayarlarını yapmanızı sağlar. Bu satırda, her API isteğinde kullanılacak olan yetkilendirme başlığını (Authorization) ayarlıyorsunuz.


     */
}
