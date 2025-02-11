#!/bin/bash
#SBATCH --output=time.out
#SBATCH --job-name={{job_name}}
#SBATCH --chdir={{working_directory}}
#SBATCH --get-user-env=L
#SBATCH --partition=p2
#SBATCH --qos=p2
#SBATCH --exclusive

{%- if run_time_max %}
#SBATCH --time={{ [1, run_time_max // 60]|max }}
{%- endif %}
{%- if memory_max %}
#SBATCH --mem={{memory_max}}G
{%- endif %}
#SBATCH --ntasks-per-node=16
#SBATCH --nodes={{ (cores/16)|round(0, 'ceil')|int }}

{{command}}
