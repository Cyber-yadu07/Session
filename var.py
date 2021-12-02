from decouple import config


class Var:
    API_ID = config("API_ID", default=6, cast=int)
    API_HASH = config("API_HASH", None)
    BOT_TOKEN = config("BOT_TOKEN", None)
