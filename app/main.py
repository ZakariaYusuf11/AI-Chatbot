from fastapi import FastAPI
from pydantic import BaseModel
import os
import openai
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles

app = FastAPI()

client = openai.OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

class Message(BaseModel):
    message: str

@app.post("/chat")
async def chat_endpoint(msg: Message):
    try:
        response = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[
                {"role": "user", "content": msg.message}
            ]
        )
        reply = response.choices[0].message.content
        return {"response": reply}
    except Exception as e:
        return {"error": str(e)}

# ✅ Add this block at the bottom
app.mount("/static", StaticFiles(directory="static"), name="static")

@app.get("/")
def serve_ui():
    return FileResponse("static/index.html")
