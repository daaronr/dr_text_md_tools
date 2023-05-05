#How can I download all pdf and mp3 files from a web page?

import requests
import os
from bs4 import BeautifulSoup
from urllib.parse import urljoin

url = 'https://example.com/your-web-page-url'

response = requests.get(url)

if response.status_code == 200:
    soup = BeautifulSoup(response.content, 'html.parser')
else:
    print("Failed to fetch the web page")
    exit()

def download_file(file_url, folder):
    local_filename = os.path.join(folder, file_url.split('/')[-1])
    with requests.get(file_url, stream=True) as r:
        r.raise_for_status()
        with open(local_filename, 'wb') as f:
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)
    return local_filename

folder = "downloads"
if not os.path.exists(folder):
    os.makedirs(folder)

for link in soup.find_all('a'):
    href = link.get('href')

    if href.endswith('.pdf'):
        file_url = urljoin(url, href)
        print(f'Downloading {file_url}')
        download_file(file_url, folder)

    if href.endswith('.mp3'):
        file_url = urljoin(url, href)
        print(f'Downloading {file_url}')
        download_file(file_url, folder)

