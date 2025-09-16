import java.util.Random;

public class MotivationalQuotes {

    public static void main(String[] args) {
        // Array of motivational quotes
        String[] quotes = {
            "Believe you can and you're halfway there.",
            "The only way to do great work is to love what you do.",
            "Success is not final, failure is not fatal: It is the courage to continue that counts.",
            "Don't watch the clock; do what it does. Keep going.",
            "Hard work beats talent when talent doesn’t work hard.",
            "Dream big and dare to fail.",
            "The best time to plant a tree was 20 years ago. The second best time is now."
        };

        // Pick a random quote
        Random random = new Random();
        int index = random.nextInt(quotes.length);

        // Display the quote
        System.out.println("🌟 Motivational Quote 🌟");
        System.out.println(quotes[index]);
    }
}

