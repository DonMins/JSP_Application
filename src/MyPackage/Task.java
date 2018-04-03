package MyPackage;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "task")
public class Task {
    @XmlElement(name="argument1")
    private String str1 = "";
    @XmlElement(name="argument2")
    private String str2 = "";
    private String result = "";

    public Task(String str1, String str2) {
        this.str1 = str1;
        this.str2 = str2;
    }

    public Task() {
    }

    public String getStr1() {
        return str1;
    }

    public String getStr2() {
        return str2;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
