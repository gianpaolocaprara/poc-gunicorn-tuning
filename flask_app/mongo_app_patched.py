from gevent import monkey
monkey.patch_all() # we need to patch very early
from mongo_app import app