package org.ayfaar.app.controllers.impl;

import org.ayfaar.app.controllers.Spitter;
import org.ayfaar.app.controllers.SpitterService;
import org.ayfaar.app.controllers.Spittle;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SpitterServiceImpl implements SpitterService {

    @Override
    public List<Spittle> getRecentSpittles(int count) {
        List<Spittle> spittles = new ArrayList<>(count);
        spittles.forEach(spittle -> new Spittle());
        return spittles;
    }

    @Override
    public void saveSpittle(Spittle spittle) {

    }

    @Override
    public void saveSpitter(Spitter spitter) {

    }

    @Override
    public Spitter getSpitter(long id) {
        return null;
    }

    @Override
    public void startFollowing(Spitter follower, Spitter followee) {

    }

    @Override
    public List<Spittle> getSpittlesForSpitter(Spitter spitter) {
        return null;
    }

    @Override
    public List<Spittle> getSpittlesFOrSpitter(String username) {
        return null;
    }

    @Override
    public Spitter getSpitter(String username) {
        return null;
    }

    @Override
    public Spittle getSpittleById(long id) {
        return null;
    }

    @Override
    public void deleteSpittle(long id) {

    }

    @Override
    public List<Spitter> getAllSpitters() {
        return null;
    }
}
