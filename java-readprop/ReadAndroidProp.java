package com.jaodroid.tools;

public class ReadAndroidProp {
    public static void main(String[] args) {
        System.out.println("=== Teste System.getProperty() ===");

        // Propriedades Java padrão
        System.out.println("aaudio.log_mask = " + System.getProperty("aaudio.log_mask"));
        

        System.out.println("=== Fim do teste ===");
    }
}
