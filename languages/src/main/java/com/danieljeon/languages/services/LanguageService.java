package com.danieljeon.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.danieljeon.languages.models.Language;
import com.danieljeon.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	public List<Language> allLanguages() {
		return languageRepository.findAll();
	}
	
	public Language create(Language lang) {
		return languageRepository.save(lang);
	}
	
	public Language find(Long id) {
        Optional<Language> optionalLang = languageRepository.findById(id);
        if(optionalLang.isPresent()) {
            return optionalLang.get();
        } else {
            return null;
        }
	}
	
	public Language update(Language lang) {
		Language editedLang = this.find(lang.getId());
		editedLang.setName(lang.getName());
		editedLang.setCreator(lang.getCreator());
		editedLang.setVersion(lang.getVersion());
		return languageRepository.save(lang);
	}
	
	public void delete(Long id) {
		languageRepository.deleteById(id);
		return;
	}
}
