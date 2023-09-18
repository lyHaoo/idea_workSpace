import com.pds.biz.ActorBiz;
import com.pds.entity.Actor;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMybatis {

    private ActorBiz actorBiz = null;
    ApplicationContext ac = null;

    @Before
    public void init() {
        ac = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        actorBiz = (ActorBiz) ac.getBean("actorBiz");
    }

    @Test
    public void testGetAll() {
        List<Actor> list = actorBiz.getAllActors();
        for (Actor a : list) {
            System.out.println(a.getActor_id() + "," + a.getFirst_name());
        }
    }


    @Test
    public void testGetOne() {
        Actor actor = actorBiz.getActorById(10);
        System.out.println(actor.getFirst_name()+","+actor.getLast_name());
    }


}
