package com.pds.dao;

import com.pds.entity.Actor;

import java.util.List;

public interface ActorMapper {

    List<Actor> getAllActors();

    Actor getActorById(int id);

}
