package org.ayfaar.app.events;

/**
 * Created by Mr on 26.02.2015.
 */
public class LinkPushEvent extends PushEvent implements HasUrl {
    protected String url;
    @Override
    public String getUrl() {
        return url;
    }
}
