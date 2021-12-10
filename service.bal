import ballerina/http;

service /svc1 on new http:Listener(9090) {

    resource function get sayHello(string name) returns string|error {
        if !(name is "") {
            return "svc1-Hello";
        }
        return error("name should not be empty!");
    }
    
    resource function get sayHi(string name) returns string|error {
        if !(name is "") {
            return "svc1-Hi";
        }
        return error("name should not be empty!");
    }

}

service /svc2 on new http:Listener(9090) {

    resource function get sayHello(string name) returns string|error {
        if !(name is "") {
            return "svc2-Hello";
        }
        return error("name should not be empty!");
    }

}
