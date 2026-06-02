# Jarvis Voice Assistant

## Overview

Jarvis Voice Assistant is a Python-based desktop voice assistant that listens for a wake word ("Jarvis"), recognizes voice commands, and performs various tasks such as opening websites, playing music, and responding through speech.

The project combines speech recognition and text-to-speech technologies to create an interactive voice-controlled assistant.

## Features

* Voice activation using the wake word "Jarvis"
* Speech-to-text conversion
* Text-to-speech responses
* Open popular websites through voice commands
* Play songs from a custom music library
* Continuous listening mode
* Exception handling for speech recognition errors

## Technologies Used

* Python
* SpeechRecognition
* pyttsx3
* Webbrowser Module

## Libraries Required

Install the required libraries using:

```bash
pip install SpeechRecognition
pip install pyttsx3
pip install pyaudio
```

## Project Structure

```text
jarvis-voice-assistant/
│
├── main.py
├── musiclibrary.py
└── README.md
```

### musiclibrary.py

This file contains a dictionary of song names and their corresponding URLs.

Example:

```python
music = {
    "believer": "https://...",
    "perfect": "https://...",
    "shapeofyou": "https://..."
}
```

## Supported Commands

### Open Websites

```text
Open Google
Open YouTube
Open Facebook
```

### Play Music

```text
Play believer
Play perfect
Play shapeofyou
```

The assistant searches for the song in the music library and opens the corresponding link in the web browser.

## How It Works

1. The application starts and asks the user to speak.
2. It continuously listens through the microphone.
3. When the wake word "Jarvis" is detected:

   * The assistant responds with "Yes".
   * It listens for the next command.
4. The command is processed and the corresponding action is performed.
5. The assistant continues listening for future commands.

## How to Run

1. Clone the repository:

```bash
git clone <repository-url>
```

2. Navigate to the project folder:

```bash
cd jarvis-voice-assistant
```

3. Install dependencies:

```bash
pip install SpeechRecognition pyttsx3 pyaudio
```

4. Run the application:

```bash
python main.py
```

## Sample Interaction

```text
Assistant: You can speak now

User: Jarvis

Assistant: Yes

User: Open Google

Assistant opens Google in the default web browser.
```

## Future Improvements

* News fetching using News API
* Weather information
* Wikipedia search
* Application launching
* Email automation
* AI-powered conversations
* Smart home integration
* Voice-based reminders and alarms

## Learning Outcomes

This project helped in understanding:

* Speech Recognition
* Text-to-Speech Systems
* Voice User Interfaces
* Python Modules and Libraries
* Event-Driven Programming
* Error Handling
* Automation with Python
