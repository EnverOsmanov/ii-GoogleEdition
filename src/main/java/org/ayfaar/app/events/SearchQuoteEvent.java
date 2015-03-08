package org.ayfaar.app.events;

import org.ayfaar.app.model.Item;
import org.ayfaar.app.model.Term;

public class SearchQuoteEvent extends LinkPushEvent {
    public SearchQuoteEvent(Term term, Item item, String quote, Integer linkId) {
        title = "Связь через поиск (" + term.getName() + " + " + item.getNumber() + ")";
        url = getUrlToTerm(term.getName());
        message = quote + (linkId == null ? "\n\nНе создана по причине возможной дубликации"
                                          : "\n\nудалить связь " + getRemoveLink(linkId));
    }
}
