package com.pds.biz;

import com.pds.dao.ActorMapper;
import com.pds.entity.Actor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("actorBiz")
public class ActorBizImpl implements ActorBiz {

    @Autowired
    private ActorMapper actorMapper;


    @Override
    public List<Actor> getAllActors() {
        return actorMapper.getAllActors();
    }

    @Override
    public Actor getActorById(int id) {
        return actorMapper.getActorById(id);
    }
}
