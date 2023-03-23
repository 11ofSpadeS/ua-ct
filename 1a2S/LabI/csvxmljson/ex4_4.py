import json
def main():
    data = [[{"time" : 23052004 , "name" : "cpu" , "value" : 18},
             {"time" : 0o010001 , "name" : "ram" , "value" : 32}
             ] ,
    {"time": 1394984189, "name": "cpu", "value": 12},
    {"time": 1394984190, "name": "cpu", "value": 19}
    ]
    print(json.dumps(data, indent=4))
main()
