package org.ayfaar.app.events;

import org.springframework.context.ApplicationEvent;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * Created by Mr on 26.02.2015.
 */
public class PushEvent extends ApplicationEvent {
    public static final String BASE_URL = "http://ii.ayfaar.org";

    protected String title;
    protected String message;

    public PushEvent() {
        super("ii event");
    }

    public String getTitle() {
        return title;
    }

    public String getMessage() {
        return message;
    }

    protected String getRemoveLink(Integer linkId) {
        return BASE_URL+"/api/link/remove/" + linkId;
    }

    protected String getUrlToTerm(String term) {
        try {
            return BASE_URL+"/"+ URLEncoder.encode(term, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
