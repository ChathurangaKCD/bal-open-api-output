import ballerina/http;

listener http:Listener ep = new http:Listener(9090);
#url: "http://greetingsbugyugyugbb-development-3034125099.dp-development-518-chathurangadassanayake.svc.cluster.local:9090/hello"

service /svc1 on  ep {

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

service /svc2 on  ep {

    resource function get sayHello(string name) returns string|error {
        if !(name is "") {
            return "svc2-Hello";
        }
        return error("name should not be empty!");
    }
    
}
