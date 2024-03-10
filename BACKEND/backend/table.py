import json
import boto3

db = boto3.resource('dynamodb')
table = db.Table('contact-us-database')

def table_function(event, context):
    
    name=event.get('name')
    email=event.get('email')
    phone=event.get('phone')
    message=event.get('message')

    put_response = table.put_item(Item={
        'NAME': name,
        'EMAIL': email,
        'PHONE-NUMBER': phone,
        'MESSAGE': message
    })

    return table.scan()
