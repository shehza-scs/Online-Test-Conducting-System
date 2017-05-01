package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pm.onlinetest.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	
	@Query("SELECT u FROM User u WHERE u.username =:username")
	User findByUsername(@Param("username") String username);
	
	@Query("SELECT u FROM User u WHERE u.userId =:userId")
	User findByUserId(@Param("userId") Integer userId);
	
	@Query("SELECT u FROM Authority a, User u WHERE u.userId = a.userId AND a.authority =:authority")
	List<User> findByAuthority(@Param("authority") String authority);
}
