import speech_recognition as sr
import webbrowser
import pyttsx3
import musiclibrary
# import requests

recognizer=sr.Recognizer()
engine=pyttsx3.init()
voices = engine.getProperty('voices')   
engine.setProperty('voice', voices[1].id) 
# newsapi="d093053d72bc40248998159804e0e67d"

def speak(text):
    engine.say(text)
    engine.runAndWait()   

def processcommand(c):
    if "open google" in c.lower():
        webbrowser.open("https://google.com")
    elif "open facebook" in c.lower():
        webbrowser.open("https://facebook.com")
    elif "open youtube" in c.lower():
        webbrowser.open("https://youtube.com")
    elif c.lower().startswith("play"):
        song=c.lower().split(" ")[1]
        link=musiclibrary.music[song]
        webbrowser.open(link)
    # elif " tell me news" in c.lower():
    #     r=requests.get(f"https://newsapi.org/v2/top-headlines?country=in&apikey={newsapi}")
    #     if r.status_code==200:
    #         # parse the JSON response
    #         data=r.json()

    #         # extract the articles
    #         articles=data.get('articles',[])

    #         #Print the headlines
    #         for article in articles:
    #             speak(article['title'])

if (__name__ == "__main__"):
     speak("you can speak now")
     while True:
        r = sr.Recognizer()
        # obtain audio from the microphone
        print("recognizing...")
        # recognize speech using Sphinx
        try:
            with sr.Microphone() as source:
                print("listening...")
                audio = r.listen(source,timeout=2,phrase_time_limit=1)
            word=r.recognize_google(audio)
            print(word)
            if (word.lower()=="jarvis"):
                speak("yes")
                with sr.Microphone() as source:
                    print("jarvis active...")
                    audio = r.listen(source)
                    command=r.recognize_google(audio)
                    processcommand(command)
        except Exception as e:
            print("error; {0}".format(e))         