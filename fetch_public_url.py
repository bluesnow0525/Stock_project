import requests
import json

# 发送请求
response = requests.get('http://127.0.0.1:4040/api/tunnels')

# 检查响应状态
if response.status_code == 200:
    data = response.json()
    
    # 提取所有 {name: public_url}
    tunnels = data.get('tunnels', [])
    result = {tunnel['name']: tunnel['public_url'] for tunnel in tunnels}
    
    # 打印结果并写入文件
    with open(r'./stock-backend/src/backend/public_urls.json', 'w') as file:
        json.dump(result, file, indent=4)
        
    # # 打印结果并写入文件
    # with open(r'./stock-frontend/public/public_urls.json', 'w') as file:
    #     json.dump(result, file, indent=4)
    with open(r'./stock-frontend/src/assets/apirul.tsx','w+') as file:
        file.write("export const API_BASE_URL = 'https://aa76-118-161-170-14.ngrok-free.app';")
        
    # 打印结果
    for name, public_url in result.items():
        print(f"{name}: {public_url}")
else:
    print(f"请求失败，状态码: {response.status_code}")