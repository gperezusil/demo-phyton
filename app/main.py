from fastapi import FastAPI

app = FastAPI(title="Demo DevSecOps Python App")

@app.get("/health")
def health_check():
    return {"status": "ok"}

@app.get("/hello/{name}")
def say_hello(name: str):
    return {"message": f"Hello, {name}!"}