package com.danieljeon.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danieljeon.lookify.models.Song;
import com.danieljeon.lookify.repositories.SongRepo;

@Service
public class SongService {
	@Autowired
	private final SongRepo songRepo;
	
	public SongService(SongRepo songRepo) {
		this.songRepo = songRepo;
	}
	
	public List<Song> allSongs() {
		return songRepo.findAllByOrderByArtist();
	}
	
	public List<Song> topTen() {
		return songRepo.findTop10ByOrderByRatingDesc();
	}
	
	public List<Song> songsByArtist(String query) {
		return songRepo.findByArtistContaining(query);
	}
	
	public Song createSong(Song song) {
		return songRepo.save(song);
	}
	
	public Song findSong(Long id) {
		Optional<Song> optionalSong = songRepo.findById(id);
		if (optionalSong.isPresent()) {
			return optionalSong.get();
		}
		else {
			return null;
		}
	}
	
	public Song updateSong(Song song) {
		Song editedSong = this.findSong(song.getId());
		editedSong.setTitle(song.getTitle());
		editedSong.setArtist(song.getArtist());
		editedSong.setRating(song.getRating());
		return songRepo.save(song);
	}
	
	public void deleteSong(Long id) {
		songRepo.deleteById(id);
		return;
	}
}
