import org.junit.Test;

/**
 * Description:
 * User: zhanghj
 * Date: 2020-10-09
 * Time: 10:58
 */

public class TestString {
    @Test
    public void test1(){
        String region = "顺义区";
        String city = "北京市";
        System.out.println(String.format("%s %s", region, city));
    }
}
