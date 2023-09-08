
import os

class Config:

    BOT_TOKEN = os.environ.get('6328374317:AAHkCzq47FK252GeJ_Uf1HNxRut24GPKpoI', None)
    APP_ID = os.environ.get('22404062', None)
    API_HASH = os.environ.get('162d4eb8c9cbfe558121c6cf41f8df43', None)

    #comma seperated user id of users who are allowed to use

    DOWNLOAD_DIR = 'downloads'
    OWNER_ID = int(os.environ.get("1165215979", 1316963576))
    UPDATES_CHANNEL = os.environ.get("UPDATES_CHANNEL", None)  
    # your telegram id
    OWNER_ID = int(os.environ.get("1165215979", ""))
    # database session name, example: xurluploader
    SESSION_NAME = os.environ.get("Project 0", "")
    # database uri (mongodb)
    DATABASE_URL = os.environ.get("mongodb+srv://Anuwa:Anuwa@cluster0.qsvet.mongodb.net/?retryWrites=true&w=majority", "")
    LOG_CHANNEL = int(os.environ.get("dpx_log", "-100"))
    BROADCAST_AS_COPY = bool(os.environ.get("BROADCAST_AS_COPY", "False"))
    DOWNLOAD_LOCATION = "./DOWNLOADS"
