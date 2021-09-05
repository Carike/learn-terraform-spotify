terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

variable "spotify_api_key" {
  type = string
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "South African Heritage with TerraformSpotify"
  description = "Every year in September we in South Africa celebrate our heritage. There is no better way than to do it with friends, a braai and some tunes. The Spotify playlist was created using Terraform."
  public      = true

  tracks = [
    #data.spotify_search_track.by_artist.tracks[0].id,
    #data.spotify_search_track.by_artist.tracks[1].id,
    #data.spotify_search_track.by_artist.tracks[2].id,
    data.spotify_track.our_heritage_by_url.id,
    data.spotify_track.shosholoza_by_url.id,
    data.spotify_track.pata_pata_by_url.id,
    data.spotify_track.african_dream_by_url.id,
    data.spotify_track.world_in_union_by_url.id,
    data.spotify_track.dis_n_land_by_url.id,
    data.spotify_track.scatterlings_of_africa_by_url.id,
    data.spotify_track.waka_waka_by_url.id,
    data.spotify_track.jerusalema_by_url.id,
    data.spotify_track.nkalakatha_by_url.id,
    data.spotify_track.suid_afrika_by_url.id,
  ]
}

# Adding songs identified by URL
data "spotify_track" "our_heritage_by_url" {
  url = "https://open.spotify.com/track/5cAwcy1JKv4sKd9yHMKL36"
}

data "spotify_track" "shosholoza_by_url" {
  url = "https://open.spotify.com/track/2O32KTWp8w2JO0v58wuNQa"
}

data "spotify_track" "pata_pata_by_url" {
  url = "https://open.spotify.com/track/1BLXxFPDL2BT37nHKD7KrA"
}

data "spotify_track" "african_dream_by_url" {
  url = "https://open.spotify.com/track/5g43jXUmcYbDa5lOv2cyzC"
}

data "spotify_track" "world_in_union_by_url" {
  url = "https://open.spotify.com/track/3oAgsBnNGfbSBvxfYwmIWP"
}

data "spotify_track" "dis_n_land_by_url" {
  url = "https://open.spotify.com/track/23Olfol0VOj1UBmOC5JtBt"
}

data "spotify_track" "scatterlings_of_africa_by_url" {
  url = "https://open.spotify.com/track/4KYClqpx2nuv8BAiRLxGrn"
}

data "spotify_track" "waka_waka_by_url" {
  url = "https://open.spotify.com/track/2Cd9iWfcOpGDHLz6tVA3G4"
}

data "spotify_track" "jerusalema_by_url" {
  url = "https://open.spotify.com/track/5jc0ZWg2sPVrzgUjnwQJlY"
}

data "spotify_track" "nkalakatha_by_url" {
  url = "https://open.spotify.com/track/2PGxiV2TSgVHd02eBd0Kz1"
}

data "spotify_track" "suid_afrika_by_url" {
  url = "https://open.spotify.com/track/7uWhnIxqT4hr3HC45DFEZm"
}

#data "spotify_search_track" "by_artist" {
#  artists = ["Dolly Parton"]
#  #  album = "Jolene"
#  #  name  = "Early Morning Breeze"
#}

#output "tracks" {
#  value = data.spotify_search_track.by_artist.tracks
#}
