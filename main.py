from fastapi import FastAPI, Request, Form
from fastapi.responses import HTMLResponse, FileResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
import uvicorn
import os

app = FastAPI(title="What's in the Bill?", description="A simple bill analysis tool")

# Setup templates and static files
templates = Jinja2Templates(directory="templates")

@app.get("/", response_class=HTMLResponse)
async def home(request: Request):
    """Render the main page with the text input form"""
    return templates.TemplateResponse("index.html", {"request": request})

@app.get("/pdf/{filename}")
async def serve_pdf(filename: str):
    """Serve PDF files from the data directory"""
    pdf_path = os.path.join("data", filename)
    if os.path.exists(pdf_path) and filename.endswith('.pdf'):
        return FileResponse(pdf_path, media_type='application/pdf', filename=filename)
    return {"error": "PDF not found"}

@app.post("/analyze", response_class=HTMLResponse)
async def analyze_bill(request: Request, bill_text: str = Form(...)):
    """Handle form submission (placeholder for now)"""
    # For now, just echo back what was submitted
    # This is where you'd add bill analysis logic later
    return templates.TemplateResponse(
        "index.html", 
        {
            "request": request, 
            "result": f"Analyzing: {bill_text[:100]}{'...' if len(bill_text) > 100 else ''}",
            "bill_text": bill_text
        }
    )

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
