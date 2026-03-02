import os

from dotenv import load_dotenv

load_dotenv()

class Config:
    # Foxbit API
    API_KEY = os.getenv('FOXBIT_API_KEY')
    API_SECRET = os.getenv('FOXBIT_API_SECRET')
    BASE_URL = "https://api.foxbit.com.br/rest/v3"
    
    # Estratégia
    BUY_THRESHOLD = float(os.getenv('BUY_THRESHOLD', -2.0))
    SELL_THRESHOLD = float(os.getenv('SELL_THRESHOLD', 4.0))
    STOP_LOSS = float(os.getenv('STOP_LOSS', -3.0))
    MAX_TRADES_PER_DAY = int(os.getenv('MAX_TRADES_PER_DAY', 3))
    
    # Trading
    SYMBOL = "btcbrl"  # BTC/BRL na Foxbit
    QUANTITY = 0.001    # Quantidade em BTC (mínimo 0.001)
