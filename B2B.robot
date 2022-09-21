*** Settings ***
Library           RequestsLibrary
Library           Collections

*** Variables ***
${B2B_URL}    localhost:9090

*** Test Cases ***
B2B Create Incident
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    1234
    @{Comments}    Create List    Incident Create Comment
    ${fields}    Create Dictionary    orgId    101    title    B2B_Incident_Creation    description    B2B_Incident_Description    impact    2    urgency    3
    ${BODY_NEW}    Create Dictionary    ticketType=incident    fields=${fields}    comments=@{Comments}
    POST    http://${B2B_URL}/mito-services/api/v3/incident    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Update Incident
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    # Create Session    MITO_AUTH    http://${MITO_IP}
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    12345
    @{Comments}    Create List    UPDATE INCIDENT TICKET COMMENT
    ${fields}    Create Dictionary    description    B2B_Incident_Description_Updated
    ${BODY_NEW}    Create Dictionary    ticketType=incident    fields=${fields}    comments=@{Comments}
    PATCH    http://${B2B_URL}/mito-services/api/v3/incident/3934    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Create Problem
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    123456
    @{Comments}    Create List    Problem Create Comment
    ${fields}    Create Dictionary    orgId    101    title    B2B_Problem_Creation    description    B2B_Problem_Description    impact    2    urgency    3
    ${BODY_NEW}    Create Dictionary    ticketType=problem    fields=${fields}    comments=@{Comments}
    POST    http://${B2B_URL}/mito-services/api/v3/problem    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Update Problem
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    # Create Session    MITO_AUTH    http://${MITO_IP}
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    1234567
    @{Comments}    Create List    UPDATE PROBLEM TICKET COMMENT
    ${fields}    Create Dictionary    description    B2B_Problem_Description_Updated
    ${BODY_NEW}    Create Dictionary    ticketType=problem    fields=${fields}    comments=@{Comments}
    PATCH    http://${B2B_URL}/mito-services/api/v3/problem/3934    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Create Change
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    1234567
    @{Comments}    Create List    Change Create Comment
    ${fields}    Create Dictionary    orgId    101    title    B2B_Change_Creation    description    B2B_Change_Description    impact    2    urgency    3
    ${BODY_NEW}    Create Dictionary    ticketType=change    fields=${fields}    comments=@{Comments}
    POST    http://${B2B_URL}/mito-services/api/v3/change    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Update Change
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    # Create Session    MITO_AUTH    http://${MITO_IP}
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    12345678
    @{Comments}    Create List    UPDATE CHANGE TICKET COMMENT
    ${fields}    Create Dictionary    description    B2B_Change_Description_Updated
    ${BODY_NEW}    Create Dictionary    ticketType=change    fields=${fields}    comments=@{Comments}
    PATCH    http://${B2B_URL}/mito-services/api/v3/change/3934    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Create Request
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    1234567
    @{Comments}    Create List    Request Create Comment
    ${fields}    Create Dictionary    orgId    101    title    B2B_Request_Creation    description    B2B_Request_Description    impact    2    urgency    3
    ${BODY_NEW}    Create Dictionary    ticketType=service_request    fields=${fields}    comments=@{Comments}
    POST    http://${B2B_URL}/mito-services/api/v3/request    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False


B2B Update Request
    ${HEADER}    Create Dictionary    Content-Type    application/json
    ${BODY}    Create Dictionary    username=administrator    password=Ericsson1
    # Create Session    MITO_AUTH    http://${MITO_IP}
    POST    http://${B2B_URL}/mito-auth/api/v3/login    headers=${HEADER}    json=${BODY}    verify=False
    ${HEADER_NEW}    Create Dictionary    Content-Type    application/json    Authorization    12345678
    @{Comments}    Create List    UPDATE REQUEST TICKET COMMENT
    ${fields}    Create Dictionary    description    B2B_Request_Description_Updated
    ${BODY_NEW}    Create Dictionary    ticketType=service_request    fields=${fields}    comments=@{Comments}
    PATCH    http://${B2B_URL}/mito-services/api/v3/request/3934    headers=${HEADER_NEW}    json=${BODY_NEW}    verify=False
