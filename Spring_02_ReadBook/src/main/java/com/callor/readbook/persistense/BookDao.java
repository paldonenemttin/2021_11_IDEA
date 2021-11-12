package com.callor.readbook.persistense;

import com.callor.readbook.model.BookVO;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookDao extends JpaRepository<BookVO, String> {
}
