package org.ayfaar.app.controllers;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

public interface SpitterService {
    List<Spittle> getRecentSpittles(int count);
    void saveSpittle(Spittle spittle);

    void saveSpitter(Spitter spitter);
    Spitter getSpitter(long id);
    void startFollowing(Spitter follower, Spitter followee);

    List<Spittle> getSpittlesForSpitter(Spitter spitter);
    List<Spittle> getSpittlesFOrSpitter(String username);
    Spitter getSpitter(String username);

    Spittle getSpittleById(long id);
    void deleteSpittle(long id);

    List<Spitter> getAllSpitters();
}
