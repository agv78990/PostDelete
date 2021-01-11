Feature: LMS_Login


Scenario: Valid call to (endpoint: https://v57pmk39lf.execute-api.us-east-1.amazonaws.com/prod/user-auth) shall allow give access token
  Given Prepare endpoint 
  And Auth type: basic Auth
  And username: humavahora91
  And password : xxxx
  And request body :{"username": "humavahora91", "password": "xxx"}
  And request type : POST
  When make a call to endpoint 
  Then Verify response access token with long string.

Scenario: Valid call to end point https://q6qmnel1w2.execute-api.us-east-1.amazonaws.com/course-info/get-all shall allow login
      Given Prepare endpoint and query parameters to make a request
      And Authorization type: bearer_token 
      And token: "xxxxxxx"
      And Request type : Get
      When Make a call to endpoint
      Then Verify message :"success" in response body.

 Scenario: Valid call to (endpoint:
     

 Scenario: Valid call to (endpoint: https://j92mpbou24.execute-api.us-east-1.amazonaws.com/class-video/get-by-course-n-filetype shall allow info of batchno: "qaae2003"
  Given Prepare endpoint 
  And Auth type: bearer_token
  And Token: "xxx"
   And request body :{"batchNo": "QAAE2003", "fileType": "Video"}
  And request type : POST
  When make a call to endpoint 
  Then Verify response data of "batchNO"::QAAE2003  


  Scenario: Valid call to endpoint: https://j92mpbou24.execute-api.us-east-1.amazonaws.com/class-video/get-by-course-n-filetype shall allow info of doc
Given Prepare endpoint 
  And Auth type: bearer_token
  And Token: "xxx"
   And request body :{"batchNo": "QAAE2003", "fileType": "Docs,Google_Docs"}
  And request type : POST
  When make a call to endpoint 
  Then Verify response "fileType": "Google_Docs"