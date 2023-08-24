import imp
import  string
import  random

def randChar():
    count = 10
    ran = ''.join(random.choices(
        string.ascii_lowercase + string.digits, k=count))
    return str(ran)

def randNum():
    count = 8
    ran = ''.join(random.choices(
        string.digits + string.digits, k=count))
    return str(ran)