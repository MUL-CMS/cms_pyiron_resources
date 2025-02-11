#!/bin/bash
#SBATCH --output=time.out
#SBATCH --job-name={{job_name}}
#SBATCH --chdir={{working_directory}}
#SBATCH --get-user-env=L
#SBATCH --partition=E5-1650
#SBATCH --qos=E5-1650-batch
#SBATCH --exclusive
#SBATCH --mem=60G

{%- if run_time_max %}
#SBATCH --time={{ [1, run_time_max // 60]|max }}
{%- endif %}
{%- if memory_max %}
#SBATCH --mem={{memory_max}}G
{%- endif %}
#SBATCH --ntasks-per-node=6
#SBATCH --nodes={{ (cores/6)|round(0, 'ceil')|int }}

{{command}}

