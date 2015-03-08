package org.ayfaar.app.dao;

public class B extends A {
/*    public B() {
        System.out.println("constructer B");
    }*/

    public B(String name) {
        System.out.println("constructor B(name)");
    }

    void someMethod(String name) {
        System.out.println(name);
        name = "inside B class";
        System.out.println(name);
    }

    public static void main(String[] args) {

        B b = new B("what");
        String newQuery = "";
        String[] aliasesList = {"1", "2", "3"};
        StringBuilder stringBuilder = new StringBuilder("Hello");
        System.out.println(stringBuilder.deleteCharAt(stringBuilder.length() -1 ));
        System.out.println(stringBuilder);
    }
}
