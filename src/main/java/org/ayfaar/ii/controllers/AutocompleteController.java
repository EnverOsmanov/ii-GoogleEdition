package org.ayfaar.ii.controllers;

import org.ayfaar.ii.service.ClientProvider;
import org.ayfaar.ii.utils.Suggestion;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AutocompleteController {

    @RequestMapping("/getTags")
    @ResponseBody
    public List<Suggestion> getTags(@RequestParam String tagName) {
        List<Suggestion> data = new ArrayList<>();

        System.out.printf("start %s  searching", tagName);
        System.out.println();

        Client client = ClientProvider.getClient();
        SearchResponse response = client.prepareSearch("iisidology")
                .setTypes("Term")
                .setQuery(QueryBuilders.prefixQuery("name", tagName))

                .execute().actionGet();
        if (response != null) {
            SearchHit[] results = response.getHits().getHits();

            data.clear();
            int count = 1;
            for (SearchHit hit : results) {
                System.out.println("------------------------------");
                System.out.println(hit.getSourceAsString());
                Object result = hit.getSource().get("name");
                //System.out.println(result);
                data.add(new Suggestion(count, result.toString()));
                count++;
            }
            System.out.println("==========================");
            System.out.println("==========================");

        } else {
            System.out.println("response is null :( ");
        }
        return data;
    }
}
