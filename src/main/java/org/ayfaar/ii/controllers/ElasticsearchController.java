package org.ayfaar.ii.controllers;

import org.ayfaar.ii.service.ClientProvider;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ElasticsearchController {

    @RequestMapping("/search")
    private String elasticsearch(@RequestParam("q") String query) {
        System.out.println("start searching");
        Client client = ClientProvider.getClient();
        SearchResponse response = client.prepareSearch("iisidology")
                .setTypes("Term")
                                        .setQuery(QueryBuilders.prefixQuery("name", query))
                                        .execute().actionGet();

        if (response != null) {

            //Если нашли один объект - открываем его страницу
            if (response.getHits().getTotalHits() == 1) {
                return response.getHits().getHits()[0].getSource().get("name").toString();
            }

            //иначе весь список
            System.out.println("Total found: " + response.getHits().getTotalHits());
            System.out.println("Total suggest: " + response.getSuggest());
            System.out.println("Speed Time" + response.getTook());

            return "/searchResults";
        } else {
            System.out.println("response is null :( ");
        }
        return "/";
    }

/*
    private void createIndex(){
        System.out.println("index start creating");
        Client client = ClientProvider.getClient();

        for (Term term : TermDao.getAll()) {
            XContentBuilder builder = null;
            try {
                builder = XContentFactory.jsonBuilder()
                        .startObject()
                        .field("name", term.getName())
                        .field("description", term.getDescription())
                        .field("shortDescription", term.getShortDescription())
                        .field("taggedDescription", term.getTaggedDescription())
                        .field("taggedShortDescription", term.getTaggedShortDescription())
                        .endObject();
            } catch (IOException e) {
                System.out.println("Sorry, User. Look at that: " + e.toString());
            }

            if (builder == null) {
                System.out.println("WTF? WHY me?");
            }
            //sending
            client.prepareIndex(INDEX_NAME, TYPE_NAME)
                    .setSource(builder)
                    .execute().actionGet();
            //
        }
        System.out.println("index finished creating");
    }

    private void getData(Client client) {
        for (Term term : TermDao.getAll()) {
            //getting
            GetResponse response = client.prepareGet(INDEX_NAME, TYPE_NAME, term.getName())
                    .execute().actionGet();
            Map<String, Object> source = response.getSource();

            System.out.println("------------------------------");
            System.out.println("Index: " + response.getIndex());
            System.out.println("Type: " + response.getType());
            System.out.println("Id: " + response.getId());
            System.out.println("Version: " + response.getVersion());
            System.out.println(source);
            System.out.println("------------------------------");
            //
        }
    }
*/
}
