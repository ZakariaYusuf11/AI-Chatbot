from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from chatbot import get_response

app = FastAPI()

class ChatRequest(BaseModel):
    message: str

@app.post("/chat")
def chat(request: ChatRequest):
    reply = get_response(request.message)
    print("DEBUG:", reply) 
    if "Error:" in reply:
        raise HTTPException(status_code=500, detail=reply)
    return {"response": reply}
