#!/bin/bash
#SBATCH --output=time.out
#SBATCH --job-name={{job_name}}
#SBATCH --chdir={{working_directory}}
#SBATCH --get-user-env=L
#SBATCH --partition=p11
#SBATCH --qos=p11
#SBATCH --exclusive

{%- if run_time_max %}
#SBATCH --time={{ [1, run_time_max // 60]|max }}
{%- endif %}
{%- if memory_max %}
#SBATCH --mem={{memory_max}}G
{%- endif %}
#SBATCH --ntasks-per-node=96
#SBATCH --nodes={{ (cores/96)|round(0, 'ceil')|int }}

{{command}}
