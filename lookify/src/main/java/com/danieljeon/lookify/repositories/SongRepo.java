package com.danieljeon.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.danieljeon.lookify.models.Song;

@Repository
public interface SongRepo extends CrudRepository<Song, Long> {
	List<Song> findAllByOrderByArtist();
	
	List<Song> findTop10ByOrderByRatingDesc();
	
	List<Song> findByArtistContaining(String search);
}
