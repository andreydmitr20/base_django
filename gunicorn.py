"""gunicorn WSGI server configuration."""
from multiprocessing import cpu_count
from os import environ


def max_workers():
    # return 1
    return cpu_count()


timeout = 20
max_requests = 10
# worker_class = 'gevent'
loglevel = "debug"
workers = max_workers()
