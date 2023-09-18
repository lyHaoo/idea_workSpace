package com.pds.biz;

import com.pds.entity.Actor;

import java.util.List;

public interface ActorBiz {


    List<Actor> getAllActors();

    Actor getActorById(int id);
}
