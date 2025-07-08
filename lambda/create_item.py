import json

def lambda_handler(event, context):
    try:
        return {
            'statusCode': 201,
            'body': json.dumps({
                'message': 'Item created successfully!'
            }),
            'headers': {
                'Content-Type': 'application/json'
            }
        }
    except Exception as e:
        print(f"Error: {e}")
        return {
            'statusCode': 500,
            'body': json.dumps({'message': 'Internal server error'})
        }
