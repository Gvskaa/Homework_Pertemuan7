package ApiTest;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    public Karate runPostSwagger(){ //belum bisa jalan
       return Karate.run("postRequest").relativeTo(getClass());
    }
    @Karate.Test
    public Karate runGetSwagger(){
        return Karate.run("getRequest").relativeTo(getClass());
    }

    @Karate.Test
    public Karate runDeleteSwagger(){
        return Karate.run("deleteRequest").relativeTo(getClass());
    }

}
