package model;


public class Software {
    private int id;
    private String name;
    private String description;
    private String accessLevels;

    public Software(String name, String description, String accessLevels) {
        this.name = name;
        this.description = description;
        this.accessLevels = accessLevels;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getAccessLevels() {
        return accessLevels;
    }
}
