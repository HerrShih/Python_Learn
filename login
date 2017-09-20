#_*_ coding:utf-8 _*_
import requests

url = 'https://cas.xjtu.edu.cn/login'
header = { 'User-agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'
}

from_data = {'username': 'xxx',
    'password': 'xxx',
    'code': '',
    'lt': 'xxx',
    'execution': 'e1s1',
    '_eventId': 'submit',
    'submit': '登录'
}
s = requests.session()
response = s.post(url, data = from_data, headers = header)
print response.status_code
