---
  - name: "Playing with Ansible and Git"
    hosts: localhost
    connection: local 
    tasks:
    - name: Ensure group "food" exists
      ansible.builtin.group:
        name: food
        state: present
    - name: Ensure group "redhat" exists
      ansible.builtin.group:
        name: redhat
        state: present
    - name: Add the user 'enchilada' with a specific uid and a primary group of 'food'
      ansible.builtin.user:
        name: enchilada
        group: food
        state: present
    - name: Add the user 'redhat' with a specific uid and a primary group of 'redhat'
      ansible.builtin.user:
        name: redhat
        uid: 1500
        group: redhat
        state: present
    - name: Creates directory
      file:
        path: /data/project/RHT
        state: directory
        group: redhat
        owner: redhat
