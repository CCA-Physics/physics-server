import os
import time

import keyring

def main():
    password = keyring.get_password('ssh server', 'pexit')
    bash_command = f'"echo {password} | sudo -S service ssh start"'
    
    os.system(f"bash -c {bash_command}")
    print("Complete... (sleeping for 10 seconds)")
    time.sleep(10)


if __name__ == '__main__':
    main()