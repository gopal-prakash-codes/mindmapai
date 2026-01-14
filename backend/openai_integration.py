from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
import openai
import os

router = APIRouter()

class MindMapRequest(BaseModel):
    user_input: str

@router.post("/generate_mind_map")
async def generate_mind_map(request: MindMapRequest):
    try:
        openai.api_key = os.getenv("OPENAI_API_KEY")
        response = openai.ChatCompletion.create(
            model="gpt-3.5-turbo",
            messages=[
                {"role": "user", "content": f"Generate mind map suggestions for: {request.user_input}"}
            ]
        )
        suggestions = response.choices[0].message['content']
        return {"suggestions": suggestions}
    except openai.error.OpenAIError as e:
        raise HTTPException(status_code=500, detail=f"OpenAI API error: {str(e)}")
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"An unexpected error occurred: {str(e)}")