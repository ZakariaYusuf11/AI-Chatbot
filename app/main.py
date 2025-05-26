from fastapi import FastAPI, Request
from pydantic import BaseModel

app = FastAPI()

class Message(BaseModel):
    message: str

@app.post("/chat")
async def chat_endpoint(msg: Message):
    # Simulated AI response
    return {"response": f"🤖 Echo: {msg.message}"}
