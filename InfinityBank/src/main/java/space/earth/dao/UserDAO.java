package space.earth.dao;

import org.springframework.data.repository.CrudRepository;
import space.earth.entities.User;


public interface UserDAO extends CrudRepository<User, Integer> {

}
