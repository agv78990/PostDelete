Feature: Create and delete repo through POStMAN

Scenario: make a repo through postman
Given : Valid call to endpoint  https://api.github.com/user/repos) shall create a new repo in github
And : Authorization_type: bearer token
And : token :"zzz"
And request body:{
    "name": "GitHubCalls",
    "description": "This is your first repository",
    "homepage": "https://github.com",
    "private": false,
    "has_issues": true,
    "has_projects": true,
    "has_wiki": true}
And : request_type :POST
When : make a call to endpoint 
Then : Verify response "login": "agv78990"

Scenario: post issue through repo
Given Valid call to endpoint(https://api.github.com/repos/agv78990/GitHubCalls/issues) shall create an issue
And : Authorization_type: bearer token
And : token :"zzz"
And request body:{
  "title": "Found a bug",
  "body": "I'm having a problem with this.",
  "labels": [
    "bug"
  ]}
And : request_type :POST
When : make a call to endpoint 
Then verify the response "url"

Scenario: delete repo
Given Valid call to endpoint(https://api.github.com/repos/agv78990/) shall create an issue
And : Authorization_type: bearer token
And : token :"zzz"
And : request_type :Delete
When : make a call to endpoint 
Then Verify the response status code "204 no content"




