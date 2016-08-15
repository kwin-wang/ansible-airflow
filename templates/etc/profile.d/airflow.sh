export  AIRFLOW_HOME={{airflow_home}}

# Load user-defined policy function defined in airflow_local_settings.py
# if it in PYTHONPATH
{% if airflow_local_settings_py_file_path %}
export PYTHONPATH={{ airflow_local_settings_py_file_path }}:$PYTHONPATH
{% endif %}

# User-defined help function
{% if airflow_helper_py_file_path %}
export PYTHONPATH={{ airflow_helper_py_file_path }}:$PYTHONPATH
{% endif %}

# The dags folder path
export AIRFLOW__CORE__DAGS_FOLDER={{airflow_dags_folder }}

# The base log folder path
export AIRFLOW__CORE__BASE_LOG_FOLDER={{airflow_base_log_folder}}

{% if airflow_s3_log_folder %}
export AIRFLOW__CORE__S3_LOG_FOLDER={{airflow_s3_log_folder}}
{% endif %}

# The airlfow executor option
export AIRFLOW__CORE__EXECUTOR={{ airflow_executor }}

export AIRFLOW__CORE__SQL_ALCHEMY_CONN={{ airflow_sql_alchemy_conn }}

# The airflow plugins folder path
export AIRFLOW__CORE__PLUGINS_FOLDER={{ airflow_plugins_folder }}


