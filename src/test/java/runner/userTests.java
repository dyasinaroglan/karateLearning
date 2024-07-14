package runner;

import com.intuit.karate.junit5.Karate;


public class userTests {

    @Karate.Test
    Karate testUi() {return Karate.run("");

    }
}
