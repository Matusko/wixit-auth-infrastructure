import sys
import json

params_template_json_file = sys.argv[1]
environment_stack_desc_json_file = sys.argv[2]

with open(params_template_json_file) as f:
    environment_params = json.load(f)

with open(environment_stack_desc_json_file) as f:
    environment_stack_set_desc = json.load(f)

environment_stack_set_outputs = environment_stack_set_desc['Stacks'][0]['Outputs']

microsevice_input_params = environment_params

exclude_params = ['ServiceUrl']

for output in environment_stack_set_outputs:
    if output['OutputKey'] not in exclude_params:
        microsevice_input_params['Parameters'][output['OutputKey']] = output['OutputValue']

f = open('microservice-params.json','w')
f.write(json.dumps(microsevice_input_params, indent=4))
f.close()