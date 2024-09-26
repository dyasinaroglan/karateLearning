package helpers;

import com.github.javafaker.Faker;
import net.minidev.json.JSONObject;

public class DataGenerator {

    public static String getRandomEmail(){

        Faker faker = new Faker();
        String email = faker.name().firstName().toLowerCase() + faker.random().nextInt(0,100) + "@test.com";
        return email;
    }
    public static String getRandomUserName(){
        Faker faker = new Faker();
        String userName = faker.name().username();
        return userName;
    }
    public static JSONObject getRandomArticleValues(){
        Faker faker = new Faker();
        String title = faker.gameOfThrones().character();
        String description = faker.gameOfThrones().city();
        String body = faker.gameOfThrones().quote();
        JSONObject object = new JSONObject();
        object.put("title", title);
        object.put("description", description);
        object.put("body", body);
        return object;
    }
}
