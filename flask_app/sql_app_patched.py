from gevent import monkey

monkey.patch_all()  # we need to patch very early
import psycogreen.gevent

psycogreen.gevent.patch_psycopg()

from sql_app import app