import json

def lambda_handler(event, context):
    longvariable = int (1000)
    print(longvariable)
    return {
        'statusCode': 200,
        'body': json.dumps("longvariable type:" + str(type(longvariable)))
    }