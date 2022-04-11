@echo off

rem Set values for your Language Understanding app
set app_id=6daa5a55-c924-49c9-9cba-a38149060df4
set endpoint=https://chaymaapplu.cognitiveservices.azure.com/
set key=327d31b02c134b08aaa84772819e3605

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"