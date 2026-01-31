# RadioB

**Independent Balkan Radio Station**

RadioB aims to provide alternative music and culture to those who look for something different. We are a community-driven station focusing on genres and sounds often overlooked by mainstream media.

[**Listen to our Deezer Playlist**](https://link.deezer.com/s/32jLodjmpEnjfOGddFfWw)

---

## 🎵 About

RadioB is an independent project dedicated to curating high-quality audio experiences. Our mission is to bridge the gap between diverse musical subcultures, offering a platform for:
*   Trip-Hop & Downtempo
*   Dub & Reggae
*   Punk, Rock & Metal
*   Jazz & Blues
*   Hip-Hop
*   Electronic & Ambient
*   Experimental & Avant-garde

## 🏗 Architecture & Tech Stack

This station is built using a robust open-source audio streaming stack:

*   **[Icecast](https://icecast.org/)**: The core streaming media server that distributes the audio to listeners.
*   **[Liquidsoap](https://www.liquidsoap.info/)**: A powerful audio stream generator language used for building the radio automation system, managing playlists, and fallback streams.
*   **[Mixxx](https://mixxx.org/)**: Broadcasting software used for live DJ sets and direct streaming to the Icecast server.
*   **[Mastodon](https://joinmastodon.org/)**: Used for chat, community engagement, and station announcements.

## 🚀 Getting Started

### 🐳 Deployment with Docker (Recommended)

This is the easiest way to run the station on any host (including Alpine Linux).

#### Prerequisites
*   [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.
*   A directory with `.mp3` files for the auto-dj playlist.

#### Step-by-Step Guide

1.  **Clone the Repository**:
    ```bash
    git clone <repository-url>
    cd radiob
    ```

2.  **Prepare Music**:
    Create a `music` folder in the project root and add your audio files.
    ```bash
    mkdir music
    # Copy your .mp3, .ogg, etc. files into ./music/
    ```

3.  **Start the Station**:
    Run the services in the background:
    ```bash
    docker-compose up -d
    ```

4.  **Verify Status**:
    Check if containers are running:
    ```bash
    docker-compose ps
    ```
    View logs to ensure everything is connected:
    ```bash
    docker-compose logs -f
    ```
    *You should see "Connection to icecast established" in the liquidsoap logs.*

5.  **Listen**:
    Open your browser or media player (VLC) and go to:
    `http://<your-server-ip>:8000/radiob`

### 🎧 Broadcasting Live (Mixxx)

To switch from the auto-playlist to a live DJ set:

1.  **Open Mixxx** (or any broadcasting software).
2.  **Configure Live Broadcasting**:
    *   **Type**: Icecast 2
    *   **Host**: `<your-server-ip>`
    *   **Port**: `8005` (Note: Connect to Liquidsoap, NOT Icecast directly!)
    *   **Mount**: `/live`
    *   **Login**: `source`
    *   **Password**: `hackme` (Check `station.liq` for the source password)
3.  **Go Live**: Enable "Live Broadcasting". Liquidsoap will automatically fade out the playlist and switch to your stream.

## 🤝 Community

Join the conversation on our [Mastodon instance](#) (link coming soon).

## 📄 License

[MIT License](LICENSE) (or appropriate license)