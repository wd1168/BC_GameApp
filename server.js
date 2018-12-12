var express = require('express')
var express_graphql = require('express-graphql')
var { buildSchema } = require('graphql')
var { loadOrder, queryOrders, upsertOrder, loadAccount, upsertAccount, deleteAccount, queryAccounts } = require('./dbutil');

// GraphQL schema
var schema = buildSchema(`
    scalar Date
    type Query {
        account(id: String!): AccountHistory
        listAccounts: [Account]
        order(id: String!): Order
        orders(
            location: String 
        ): [Order]
        trends: Trends  
    }
    type Mutation {
        mutateAccount(input: AccountInput!): AccountHistory
        addOrder(input: OrderInput!): Order
    }  
    input OrderInput {
        request_date: Date
        location: String! 
        items: [ItemInput]!
        account_id: String
        source_system: String!
    }
    input AccountInput {
        id: String
        email: String
        cell: String
        name: String
        mutation: String
    }
    input ItemInput {
        label: String
        type: String
        quantity: Int
        perUnitPrice: Float
    }  
    type Order {
        id: String
        request_date: Date
        location: String
        items: [OrderItem]
        account_id: String
        customer: Account
        source: String
    }
    type OrderItem {
        label: String
        type: String
        quantity: Int
        perUnitPrice: Float
    }
    type Account {
        id: String
        email: String
        cell: String
        name: String
    }
    type AccountHistory {
        id: String
        email: String
        cell: String
        name: String
        orders: [Order]
    }
    type Trends {
        locations: [TrendData]
        types: [TrendData]
    }
    type TrendData {
        label: String
        value: Int
    }
`)
var getOrder = (args) => { 
    var id = args.id
    return loadOrder(id)
}
var getOrders = (args) => {
    return queryOrders(args.location)
}
var createOrder = (args) => {
    var input = args.input
    if (!input.request_date)
        input.request_date = new Date()
    return upsertOrder(input)    
}
var crudAccount = (args) => {
    var input = args.input
    input.mutation = input.mutation.toLowerCase()
    if (input.mutation == "delete") {
        return deleteAccount(input)
    } else {
        return upsertAccount(input)
    }
}
var getAccount = (args) => {
    return loadAccount(args.id)
}
var listAccounts = () => {
    return queryAccounts()
}
var getTrends = () => {
    return { locations: [], types: [] }
}
var root = {
    addOrder: createOrder,
    mutateAccount: crudAccount,
    order: getOrder,
    orders: getOrders,
    trends: getTrends,
    account: getAccount,
    listAccounts: listAccounts
}
// Create an express server and a GraphQL endpoint
var app = express()
app.use('/graphql', express_graphql({
    schema: schema,
    rootValue: root,
    graphiql: true,
    formatError: error => ({
        message: error.message,
        locations: error.locations,
        stack: error.stack ? error.stack.split('\n') : [],
        path: error.path
    })
}));
const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
    console.log(`Express GraphQL Server Now Running On localhost:${PORT}/graphql`)
});