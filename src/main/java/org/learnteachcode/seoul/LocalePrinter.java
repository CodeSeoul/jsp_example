package org.learnteachcode.seoul;

public class LocalePrinter {
    private String locale = "";

    public String getLocale() {
        return locale;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public String printLocale() {
        if(!locale.equals("")) {
            return "Your locale is " + locale;
        } else {
            return "Couldn't determine your locale";
        }
    }
}
