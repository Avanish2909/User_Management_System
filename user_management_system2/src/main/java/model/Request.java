package model;


public class Request {
    private int userId;
    private int softwareId;
    private String accessType;
    private String reason;
    private String status;

    public Request(int userId, int softwareId, String accessType, String reason) {
        this.userId = userId;
        this.softwareId = softwareId;
        this.accessType = accessType;
        this.reason = reason;
        this.status = "Pending";
    }

    public int getUserId() {
        return userId;
    }

    public int getSoftwareId() {
        return softwareId;
    }

    public String getAccessType() {
        return accessType;
    }

    public String getReason() {
        return reason;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

