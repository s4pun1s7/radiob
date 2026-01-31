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

Since this project relies on a specific ecosystem of tools, here is a high-level guide to setting up a similar environment:

### Prerequisites
1.  **Server**: A VPS or local machine to host Icecast and Liquidsoap.
2.  **Source Client**: A computer running Mixxx for live broadcasting.

### Setup Overview

1.  **Install Icecast**:
    *   Deploy Icecast on your server.
    *   Configure `icecast.xml` with strong passwords for source authentication.

2.  **Configure Liquidsoap**:
    *   Install Liquidsoap on the same server.
    *   Create a `.liq` script to define your radio logic (e.g., fallback to a playlist when no live DJ is connected).
    *   Point the Liquidsoap output to your Icecast mount point.

3.  **Connect with Mixxx**:
    *   In Mixxx preferences > Live Broadcasting, enter your Icecast server details.
    *   Start streaming to take over the airwaves!

## 🤝 Community

Join the conversation on our [Mastodon instance](#) (link coming soon).

## 📄 License

[MIT License](LICENSE) (or appropriate license)