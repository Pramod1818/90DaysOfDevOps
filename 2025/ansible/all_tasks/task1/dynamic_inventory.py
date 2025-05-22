#!/usr/bin/env python3
import json

inventory = {
    "all": {
        "hosts": ["3.250.197.180", "3.250.39.208"],
        "vars": {
            "ansible_user": "ubuntu",
            "ansible_ssh_private_key_file": "~/ansible-key.pem",
            "ansible_python_interpreter": "/usr/bin/python3"
        }
    }
}

print(json.dumps(inventory))
