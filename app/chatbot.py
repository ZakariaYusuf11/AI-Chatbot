import openai
import os

openai.api_key = os.getenv("OPENAI_API_KEY")

def get_response(user_input):
    try:
        response = openai.ChatCompletion.create(
            model="gpt-3.5-turbo",
            messages=[
                {"role": "system", "content": "You are a helpful assistant."},
                {"role": "user", "content": user_input}
            ]
        )
        return response.choices[0].message["content"]
    except Exception as e:
        return f"Error: {str(e)}"
