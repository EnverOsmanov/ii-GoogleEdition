package org.ayfaar.app.controllers.search.cache;


import org.springframework.cache.Cache;
import org.springframework.cache.support.AbstractCacheManager;

import javax.inject.Inject;
import java.util.Collection;

import static java.util.Arrays.asList;


public class DBCacheManager extends AbstractCacheManager {

    @Inject
    DBCache dbCache;

    @Override
    protected Collection<? extends Cache> loadCaches() {
        return asList(dbCache);
    }

}
