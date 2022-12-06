from tax_manager.settings import *

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'taxmanager_github', 
        'USER': 'taxmanager_github',
        'PASSWORD': 'taxmanager_github',
        'HOST': '46.28.110.196', 
        'PORT': '5432',
    }

}