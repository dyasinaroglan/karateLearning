package ders;

public class _3Ders {


       /*

                                   API
                       (Application Programming Interface)

                       İstek Gönderme(Request):  Bir uygulama ya da istemci, belirli bir şehre ait hava durumu bilgilerini almak için API'ye bir istek gönderir.
                                                 Bu istek, genellikle JSON formatında veriler içerir.

                                                  {
                                                     "cityName": "New-York"
                                                  }
                                                  Bu JSON verisi, "New-York" adlı şehrin hava durumu bilgilerini almak için Hava Durumu API'sine gönderiliyor.


                        API'nin Çalışması:  Hava Durumu API'si, gönderilen isteği alır ve bu şehre ait hava durumu bilgilerini arar. Bu işlem genellikle bir veri tabanından ya da başka bir kaynaktan yapılır.
                                            API, şehrin hava durumu bilgilerini bulduğunda, bu bilgileri JSON formatında bir yanıt (response) olarak geri gönderir.

                                            {
                                              "currentTemperature": 70,
                                              "humidity": "45%",
                                              "forecast": {
                                              "tomorrow": 75,
                                              "dayAfterTomorrow": 60
                                             }



                                 Types of API requests

                                 1. GET İsteği
                                 Amacı: API'den belirli bir veri veya bilgi almak için kullanılır.
                                 Nasıl Çalışır: İstemci, sunucuya bir GET isteği gönderir ve sunucudan ilgili veriyi alır.
                                 Örnek: Bir hava durumu API'sine istek gönderip belirli bir şehrin hava durumunu almak.
                                 GET /weather?city=NewYork → Bu istek, sunucudan New York şehrinin hava durumu bilgisini almak için kullanılır.
                                 Ne Zaman Kullanılır: Sadece veri almak istediğinizde kullanılır, sunucuda bir değişiklik yapmaz.


                                 2. POST İsteği
                                 Amacı: Sunucuya veri göndermek ve genellikle yeni bir kaynak oluşturmak için kullanılır.
                                 Nasıl Çalışır: İstemci, sunucuya belirli bir veriyi gönderir ve sunucu, bu veriyi işleyerek yeni bir kaynak oluşturur.
                                 Örnek: Bir kullanıcı kaydı oluşturmak için POST isteği kullanılabilir.
                                 POST /users → Kullanıcı adı, şifre gibi bilgileri sunucuya gönderip yeni bir kullanıcı oluşturur.
                                 Ne Zaman Kullanılır: Yeni bir kaynak oluşturulacağı ya da sunucuya veri gönderileceği zaman kullanılır.


                                 3. PUT İsteği
                                 Amacı: Var olan bir kaynağı güncellemek için kullanılır. PUT isteği, genellikle tam bir güncelleme yapmak içindir.
                                 Nasıl Çalışır: İstemci, var olan bir kaynağı güncellemek için sunucuya yeni bir veri gönderir. Sunucu, eski veriyi bu yeni veri ile değiştirir.
                                 Örnek: Bir kullanıcının profil bilgilerini güncellemek.
                                 PUT /users/123 → Kullanıcı ID'si 123 olan kişinin profilini günceller.
                                 Ne Zaman Kullanılır: Var olan bir kaynağı tamamen değiştirmek ya da güncellemek istediğinizde kullanılır.


                                 4. DELETE İsteği
                                 Amacı: Belirtilen bir kaynağı sunucudan silmek için kullanılır.
                                 Nasıl Çalışır: İstemci, belirli bir kaynağı silmek için sunucuya DELETE isteği gönderir ve sunucu bu kaynağı siler.
                                 Örnek: Bir kullanıcıyı sistemden silmek.
                                 DELETE /users/123 → Kullanıcı ID'si 123 olan kişiyi sistemden siler.
                                 Ne Zaman Kullanılır: Bir kaynağı tamamen ortadan kaldırmak istediğinizde kullanılır




        */
}
