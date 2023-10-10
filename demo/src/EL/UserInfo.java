package EL;

public class UserInfo {
    private String name="";

    public UserInfo() {
    }

    public UserInfo(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    public String toString() {
        return "UserInfo{name = " + name + "}";
    }
}
