package aula12;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class WordChecker {

    public static void main(String[] args) {
        String filename = "C:/ua-leci/1a2S/POO/test.txt";

        int totalWords = 0;
        try (BufferedReader reader = new BufferedReader(new FileReader(filename))) {
            Set<String> uniqueWords = new HashSet<>();

            String line;
            while ((line = reader.readLine()) != null) {
                String[] words = line.split("\\s+");

                for (String word : words) {
                    totalWords += 1;
                    String cleanWord = word.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();

                    if (!cleanWord.isEmpty()) {
                        uniqueWords.add(cleanWord);
                    }
                }
            }

            int uniqueWordCount = uniqueWords.size();
            System.out.println("Número de palavras total: " + totalWords);
            System.out.println("Número de palavras diferentes: " + uniqueWordCount);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

