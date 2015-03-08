package org.ayfaar.app.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class UID {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "UriGenerator")
    @GenericGenerator(name = "UriGenerator", strategy = "org.ayfaar.app.utils.UriGenerator")
    protected String uri;

    @Override
    public boolean equals(Object other) {
        if (this == other) return true;
        if (other == null || getClass() != other.getClass()) return false;
        UID otherUid = (UID) other;

        return this.uri.equals(otherUid.uri);
    }

    @Override
    public int hashCode() {
        return uri.hashCode();
    }

    public String getUri() {
        return uri;
    }

    public void setUri(String uri) {
        this.uri = uri;
    }
}

