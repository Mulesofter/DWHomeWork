%dw 2.0
output application/json
var status = [ 
{ "success": true }, 
{ "success": false }, 
{ "success": false }, 
{ "success": false }, 
{ "success": true } 
] 
---
payload filter ((item, index) -> status[index].success == false)

/*
output
[{ 
"Name": 2, 
"age": 33 
}, 
{ 
"Name": 3, 
"age": 45 
}, 
{ 
"Name": 4, 
"age": 32 
}]
*/