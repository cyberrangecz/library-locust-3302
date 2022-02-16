#!/bin/bash
# Start the sandbox with student ID

[ $# -eq 1 ] || { echo "Usage: ./start.sh student_ID" ; exit 1; } 
echo "student_id: $1" > preconfig/group_vars/ansible.yml || { echo "Could not assign student ID"; exit 1; }
vagrant up
