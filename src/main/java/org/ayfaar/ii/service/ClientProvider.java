package org.ayfaar.ii.service;

import org.elasticsearch.client.Client;
import org.elasticsearch.node.Node;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import static org.elasticsearch.node.NodeBuilder.nodeBuilder;

@Component
public class ClientProvider {
    private static final Node node = nodeBuilder().node();
    private static final Client client = node.client();

    private ClientProvider() {
    }

    @PostConstruct
    public static Client getClient(){
        return client;
    }

    @PreDestroy
    public void closeNode(){
        if(!node.isClosed()) {
            node.close();
            System.out.println("Node closed");
        }
    }

}