package runner;

import com.intuit.karate.junit5.Karate;


public class userTests {

    @Karate.Test
    Karate testUi() {return Karate.run("");

    }
   /* @Karate.Test
    Karate testTags() {
        return Karate.run("").tags("@debug");
    }

    */
}

  /*
      @Karate.Test  @debug
      Karate testTags() {
                  return Karate.run("").tags("@debug");
             }
             Bu ifade, sadece @debug etiketi ile işaretlenmiş olan test senaryolarını çalıştırır.
          Yani, test dosyalarınızda @debug etiketi ile belirtilmiş senaryolar varsa, sadece bu senaryolar çalıştırılır.

   */
