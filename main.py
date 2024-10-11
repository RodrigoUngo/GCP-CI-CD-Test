from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_http():
    name = request.args.get('name', 'World: Testing the trigger with a push (Test 18)')
    return f'Hello, {name}!'

if __name__ == '__main__':
    app.run(debug=True)